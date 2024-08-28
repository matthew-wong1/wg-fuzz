struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16>;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec4<f32>(-919f, 470f, -877f, -901f)), Struct_2(vec4<f32>(472f, 805f, 350f, -773f)), Struct_2(vec4<f32>(-1553f, -2170f, -798f, -152f)), Struct_2(vec4<f32>(414f, 1560f, 604f, 117f)), Struct_2(vec4<f32>(-1000f, 1219f, 568f, -400f)), Struct_2(vec4<f32>(-134f, -637f, -2971f, 969f)), Struct_2(vec4<f32>(342f, 454f, 333f, -1190f)), Struct_2(vec4<f32>(-173f, -528f, -2412f, -298f)), Struct_2(vec4<f32>(956f, 801f, 322f, -1209f)), Struct_2(vec4<f32>(504f, -2264f, -546f, -111f)), Struct_2(vec4<f32>(-144f, 1049f, -751f, 166f)), Struct_2(vec4<f32>(1293f, -1317f, 363f, 123f)), Struct_2(vec4<f32>(619f, 397f, -1186f, -692f)), Struct_2(vec4<f32>(676f, -553f, 125f, -1325f)), Struct_2(vec4<f32>(-135f, -110f, -1057f, -1395f)), Struct_2(vec4<f32>(-987f, -455f, -1281f, 1109f)));

var<private> global2: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(31184i, 1i, 49028i), vec3<i32>(i32(-2147483648), 0i, 2349i), vec3<i32>(16838i, 0i, 2147483647i), vec3<i32>(7094i, 23989i, -1i), vec3<i32>(-23770i, -16971i, 16686i), vec3<i32>(i32(-2147483648), 0i, 0i), vec3<i32>(33472i, 9641i, 0i), vec3<i32>(i32(-2147483648), -1i, 46519i), vec3<i32>(2147483647i, 3375i, 2941i), vec3<i32>(-11569i, -1i, i32(-2147483648)), vec3<i32>(0i, 838i, i32(-2147483648)), vec3<i32>(1i, 50075i, 8684i), vec3<i32>(-31491i, 2147483647i, 2147483647i), vec3<i32>(1i, 14105i, -1i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(3033i, 2206i, 1i), vec3<i32>(-48019i, i32(-2147483648), 65178i), vec3<i32>(-35897i, 2147483647i, -3436i), vec3<i32>(1i, 17429i, i32(-2147483648)), vec3<i32>(1i, -12676i, 2147483647i), vec3<i32>(0i, 33356i, -1i), vec3<i32>(6434i, i32(-2147483648), -67855i));

var<private> global3: f32;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global2 = array<vec3<i32>, 22>();
    return _wgslsmith_clamp_i32(-2147483647i, -60545i, firstLeadingBit(global4.b.x));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(!select(!(!global4.a), select(global4.a, select(global4.a, global4.a, global4.a.x), global4.e || global4.e), true), global4.b, _wgslsmith_sub_u32(~(~arg_1.x), 1u), global4.d, true);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1893f + global4.d.x), 144f, _wgslsmith_f_op_f32(global4.d.x - 1810f), _wgslsmith_f_op_f32(abs(var_0.d.x)))), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~0u, 16u)]))));
    let var_2 = ~(~(-2147483647i));
    let var_3 = 4294967295u;
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1161f)))), -555f, 260f, var_0.d.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -997f, 933f, -623f)))));
    return var_0;
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    global2 = array<vec3<i32>, 22>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) - global4.d.x) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.d.x), 1119f) * global4.d.x)), -823f);
    var var_1 = -148f;
    var var_2 = vec2<f32>(367f, _wgslsmith_f_op_f32(round(805f)));
    let var_3 = vec4<i32>(1i, ~40030i, global4.b.x, 14138i);
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~(~global4.c) ^ countOneBits(1u)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstTrailingBit(87180u), _wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~arg_2.c), 4073u) ^ select(func_2(var_3.x, vec3<u32>(u_input.a.x, 1u, 17215u)).c, ~global4.c, true)), 16u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_u32(reverseBits(abs(~vec4<u32>(global4.c, arg_3.x, global4.c, arg_3.x)) >> (arg_2 % vec4<u32>(32u))), vec4<u32>(countOneBits(u_input.a.x) | arg_3.x, arg_3.x, (countOneBits(arg_2.x) >> (12238u % 32u)) << (abs(~u_input.a.x) % 32u), (~0u & ~global4.c) >> (1u % 32u)));
    global2 = array<vec3<i32>, 22>();
    global2 = array<vec3<i32>, 22>();
    var var_1 = vec3<bool>(global4.a.x, false, ~(56432i & arg_1.x) >= _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(global4.b.ww, global4.b.zy), _wgslsmith_div_vec2_i32(arg_1.xy, arg_1.zy)), (global4.b.xz >> (vec2<u32>(global4.c, 10618u) % vec2<u32>(32u))) & vec2<i32>(-2147483647i, 5499i)));
    global1 = array<Struct_2, 16>();
    return Struct_1(!global4.a, countOneBits(vec4<i32>(global4.b.x, abs(abs(global4.b.x)), arg_1.x & -global4.b.x, firstLeadingBit(-33188i))), var_0.x, arg_0.a.wyy, select(all(vec4<bool>(arg_2.x != arg_3.x, false, true, any(vec4<bool>(false, var_1.x, global4.a.x, global4.a.x)))), false, true));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(min(u_input.a.x, firstLeadingBit(global4.c)), 16u)];
    global2 = array<vec3<i32>, 22>();
    return func_2(2147483647i, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!(!global4.a), global4.a, false);
    global2 = array<vec3<i32>, 22>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4.d.x, 529f, global4.a.x)) * _wgslsmith_f_op_f32(global4.d.x * 644f)))))));
    global2 = array<vec3<i32>, 22>();
    global3 = _wgslsmith_f_op_f32(-global4.d.x);
    var var_2 = var_0.x;
    var var_3 = func_5(select(vec4<bool>(false, false, false | all(vec4<bool>(true, false, true, false)), max(global4.b.x, 0i) > global4.b.x), !(!(!vec4<bool>(true, false, false, global4.a.x))), !global4.a.x), func_4(func_3(_wgslsmith_f_op_f32(-1973f - -1746f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1836f, var_1, global4.d.x, global4.d.x)))), func_2(func_1(Struct_1(vec3<bool>(false, global4.a.x, global4.a.x), vec4<i32>(-1i, 984i, 18004i, global4.b.x), 3611u, vec3<f32>(-424f, var_1, global4.d.x), var_0.x)), u_input.a)), abs(min(global2[_wgslsmith_index_u32(global4.c, 22u)], abs(global4.b.xxy))), _wgslsmith_div_vec4_u32(~vec4<u32>(global4.c, 1u, 21164u, global4.c) & ~vec4<u32>(u_input.a.x, u_input.a.x, global4.c, 0u), vec4<u32>(1u, 94321u, ~3293u, ~904u)), vec2<u32>(func_2(-8882i, _wgslsmith_mod_vec3_u32(vec3<u32>(81680u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 45282u, u_input.a.x))).c, ~60721u)), Struct_1(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 324f, 1000f, 188f) + vec4<f32>(global4.d.x, -449f, -1648f, var_1))), ~vec3<i32>(global4.b.x, global4.b.x, 1i), (vec4<u32>(global4.c, global4.c, u_input.a.x, global4.c) << (vec4<u32>(1u, global4.c, global4.c, u_input.a.x) % vec4<u32>(32u))) & vec4<u32>(u_input.a.x, global4.c, u_input.a.x, 62282u), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(0u, u_input.a.x)), vec2<u32>(0u, 4178u))).a, global4.b, global4.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global4.d))) - vec3<f32>(-420f, _wgslsmith_f_op_f32(trunc(1502f)), _wgslsmith_f_op_f32(sign(-1045f)))), any(select(select(vec4<bool>(var_0.x, true, true, global4.a.x), vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, false, false, var_0.x)), !vec4<bool>(true, var_0.x, global4.e, global4.e), vec4<bool>(var_0.x, true, global4.e, global4.e)))));
    global3 = _wgslsmith_f_op_f32(trunc(global4.d.x));
    global3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

