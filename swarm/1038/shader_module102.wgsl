struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: bool) -> i32 {
    global0 = 1u;
    var var_0 = Struct_4(u_input.a.xx, vec4<bool>(arg_0, _wgslsmith_f_op_f32(abs(-681f)) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-2282f)))), arg_0, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(164f, -1283f, -482f), vec3<f32>(-842f, -989f, -1000f), false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1863f, -1415f, 218f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(707f, -948f, 1961f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 559f, -1112f))))))));
    var var_2 = vec2<bool>(any(!var_0.b.yyw), var_0.b.x);
    global0 = 40645u;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(37974i, 24181i, ~0i, abs(2147483647i)) ^ ((vec4<i32>(0i, -17246i, -2147483647i, -6555i) << (u_input.a % vec4<u32>(32u))) ^ ~vec4<i32>(-1i, 1i, 2147483647i, 1264i)), min(vec4<i32>(firstTrailingBit(1i), ~(-42587i), i32(-1i) * -7606i, ~51932i), _wgslsmith_add_vec4_i32(-vec4<i32>(1i, -30081i, 0i, 18446i), -vec4<i32>(1i, -1i, -33968i, -2147483647i)))) | ~(~(~(~(-19973i))));
}

fn func_2() -> i32 {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(1i & _wgslsmith_mod_i32(func_3(false), ~(-1i)), func_3(select(true, false, true))), i32(-1i) * -1i, 0i);
    return 1i;
}

fn func_1() -> Struct_1 {
    global0 = 24344u;
    let var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(func_2(), -func_2()), countOneBits(max(abs(37378i), ~0i)), ~reverseBits(func_3(true)), func_2()));
    let var_1 = vec4<bool>(false, !any(vec3<bool>(true, true, true)), true, u_input.a.x >= (~firstTrailingBit(u_input.a.x) >> (~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u)));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-615f, -715f, -323f) - vec3<f32>(1538f, -370f, -1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, -713f, -1582f) - vec3<f32>(264f, 460f, -101f)))), (var_0.xw | _wgslsmith_div_vec2_i32(var_0.zz, var_0.zw)) & var_0.yx, _wgslsmith_mult_vec3_i32(vec3<i32>(33950i, 41114i, var_0.x), _wgslsmith_sub_vec3_i32(var_0.xwx, vec3<i32>(-2147483647i, var_0.x, var_0.x))) | (vec3<i32>(-1i) * -var_0.ywz), true), Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -286f), 416f, _wgslsmith_f_op_f32(-898f + 377f)))), var_0.ww, vec3<i32>(_wgslsmith_mod_i32(~var_0.x, 2147483647i), _wgslsmith_mult_i32(2582i, var_0.x) ^ _wgslsmith_add_i32(-2147483647i, var_0.x), var_0.x), var_1.x), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-152f, 511f, -920f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1098f, 1971f, 442f))))), ~vec2<i32>(var_0.x, -var_0.x), abs(var_0.xwx), true), Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-406f, -982f, 1208f), vec3<f32>(-206f, 1521f, -242f)))), vec3<f32>(_wgslsmith_f_op_f32(281f * -701f), 825f, _wgslsmith_f_op_f32(f32(-1f) * -721f)))), vec2<i32>(var_0.x, var_0.x) >> ((vec2<u32>(30111u, u_input.a.x) ^ u_input.a.yy) % vec2<u32>(32u)), countOneBits(var_0.xxx), any(!var_1.zy)), u_input.a.x);
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a.a.x, 1798f, var_2.a.a.x))))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.a.a.x)), _wgslsmith_f_op_f32(var_2.d.a.x - var_2.d.a.x), _wgslsmith_f_op_f32(var_2.d.a.x + 700f)))), max(-(vec2<i32>(-1i) * -var_2.c.b), _wgslsmith_div_vec2_i32(var_0.zw, -abs(var_2.c.b))), vec3<i32>(var_0.x, var_2.a.c.x, countOneBits(-10234i)), var_2.a.d);
    return Struct_1(var_2.d.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~vec4<u32>(~(~9440u), u_input.a.x, u_input.a.x, u_input.a.x);
    var_0 = func_1();
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-789f, -861f, 1095f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a, -697f, 192f)))))))), firstTrailingBit(firstLeadingBit(min(~vec2<i32>(-2147483647i, 30705i), vec2<i32>(-1i, -1i)))), vec3<i32>(-1i) * -firstTrailingBit(-vec3<i32>(1i, -4925i, 11256i)), true);
    let var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -534f)))), _wgslsmith_f_op_f32(exp2(var_2.a.x))), vec2<i32>(firstTrailingBit(max(var_2.c.x, -2147483647i)) ^ ~1i, i32(-1i) * -var_2.b.x), firstLeadingBit(vec3<i32>(min(var_2.c.x, var_2.c.x), -(var_2.b.x >> (0u % 32u)), 0i)), ~max(_wgslsmith_add_i32(var_2.b.x, 33423i), 1i) <= 1i);
    var_0 = func_1();
    var var_4 = var_3;
    var_0 = func_1();
    let var_5 = select(all(vec4<bool>(!(u_input.a.x >= u_input.a.x), false, select(4294967295u >= var_1.x, var_4.d, all(vec3<bool>(var_4.d, var_4.d, false))), !select(true, var_3.d, var_2.d))), var_3.d, true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(var_3.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.b.x, -51552i), var_3.c.yy)), 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))), ~68135u >> (u_input.a.x % 32u), _wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.c.x, 1i, var_2.b.x, var_2.b.x), vec4<i32>(var_4.c.x, var_4.b.x, var_4.c.x, 42825i)), -vec4<i32>(-23096i, -34386i, var_4.b.x, 0i))), firstLeadingBit(max(abs(vec4<i32>(var_3.b.x, var_3.c.x, -7994i, var_3.b.x)), -vec4<i32>(-62537i, 1i, -48979i, var_4.c.x)))), u_input.a.x);
}

