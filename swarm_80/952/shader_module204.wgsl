struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-2581f, 1000f, -1000f, -1264f);

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = arg_2;
    global2 = array<Struct_1, 31>();
    var var_1 = Struct_4(~(4294967295u << (arg_2.b.a % 32u)), !any(vec3<bool>(var_0.a.x, true, arg_0 >= global0.x)), min(43884i, var_0.b.b.x), -1000f);
    global1 = select(var_1.b, !var_0.a.x, all(!(!vec4<bool>(true, var_0.a.x, true, true))) == var_0.a.x);
    var var_2 = -730f;
    return vec3<bool>(var_0.a.x, true, any(var_0.a.zz));
}

fn func_2() -> Struct_1 {
    var var_0 = ~30923u;
    let var_1 = Struct_4(80799u, all(select(func_3(1166f, _wgslsmith_f_op_f32(900f * -656f), Struct_2(vec3<bool>(true, false, false), Struct_1(u_input.b.x, vec2<i32>(1i, u_input.a), u_input.b.xzw, global0.x))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), u_input.a, -2128f);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.d + global0.x), _wgslsmith_f_op_f32(exp2(var_1.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(555f, var_1.d)) + vec2<f32>(-1929f, var_1.d)))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(-295f * -711f)), -174f))));
    var var_3 = -716f;
    var var_4 = global2[_wgslsmith_index_u32(~(~1u), 31u)];
    return global2[_wgslsmith_index_u32(~select(var_1.a, ~1u, any(!vec3<bool>(true, var_1.b, true))), 31u)];
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)))));
    var var_1 = func_2();
    let var_2 = true;
    let var_3 = Struct_2(!(!(!(!vec3<bool>(true, var_2, true)))), global2[_wgslsmith_index_u32(~39563u, 31u)]);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(722f, var_3.b.d), var_0)) + -1909f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-248f - 335f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(306f, -1000f, all(!vec3<bool>(var_3.a.x, var_3.a.x, var_2)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x + -1397f)))));
    return Struct_4(~var_3.b.a, var_3.a.x, -1i, 858f);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<u32> {
    global2 = array<Struct_1, 31>();
    global2 = array<Struct_1, 31>();
    var var_0 = !func_3(-1255f, _wgslsmith_f_op_f32(sign(arg_0.d)), Struct_2(!select(vec3<bool>(false, false, arg_0.b), vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(arg_0.b, false, arg_0.b)), Struct_1(abs(63591u), -arg_3.b, abs(u_input.b.wzx), -129f)));
    var var_1 = Struct_1(u_input.b.x, _wgslsmith_add_vec2_i32(abs(vec2<i32>(~arg_0.c, -arg_0.c)), vec2<i32>(firstLeadingBit(arg_3.b.x), func_1(-vec2<i32>(-28753i, 20503i)).c)), func_2().c, -1228f);
    global1 = var_0.x;
    return vec2<u32>(reverseBits(31237u), ~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.zy >> (func_4(func_1(~vec2<i32>(u_input.a, -17895i) >> (vec2<u32>(u_input.b.x, 27743u) % vec2<u32>(32u))), abs(23094u), vec3<f32>(-1001f, global0.x, global0.x), Struct_1(u_input.b.x, firstTrailingBit(vec2<i32>(-34020i, -2147483647i) << (u_input.b.yx % vec2<u32>(32u))), vec3<u32>(countOneBits(u_input.b.x), u_input.b.x, 0u), global0.x)) % vec2<u32>(32u));
    let var_1 = -(-firstTrailingBit(-vec4<i32>(u_input.a, 16854i, -2147483647i, u_input.a)) & vec4<i32>(min(func_2().b.x, -3850i), max(-6034i, u_input.a) | _wgslsmith_mod_i32(u_input.a, u_input.a), func_2().b.x, _wgslsmith_div_i32(countOneBits(u_input.a), 2147483647i)));
    var var_2 = abs(var_1.x);
    var var_3 = Struct_4(u_input.b.x, func_1(~(~var_1.yx) | select(var_1.zz >> (vec2<u32>(89497u, var_0.x) % vec2<u32>(32u)), var_1.zy, func_3(global0.x, -125f, Struct_2(vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(1u, 31u)])).xy)).b, -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, -1i, -2147483647i), countOneBits(vec3<i32>(-65562i, 2147483647i, var_1.x))), select(vec3<i32>(0i, 1i, var_1.x), vec3<i32>(var_1.x, 0i, -2147483647i), true)), global0.x);
    var_2 = ~(-((_wgslsmith_clamp_i32(u_input.a, var_1.x, 2147483647i) << (1u % 32u)) >> (~_wgslsmith_sub_u32(1u, var_3.a) % 32u)));
    var_3 = Struct_4(~4294967295u, false, -1i, 432f);
    let var_4 = ~u_input.b.x;
    var var_5 = ~(-var_1.yyw);
    var_5 = _wgslsmith_clamp_vec3_i32(-firstLeadingBit(abs(var_1.xyx)) ^ -vec3<i32>(var_3.c << (0u % 32u), _wgslsmith_div_i32(2147483647i, -9219i), _wgslsmith_clamp_i32(1i, -17582i, -2147483647i)), select(var_1.xwz, ~vec3<i32>(var_3.c, 49701i, var_1.x) << (vec3<u32>(~u_input.b.x, var_0.x << (var_0.x % 32u), ~29363u) % vec3<u32>(32u)), any(vec4<bool>(false, var_3.b, var_3.b, false)) | var_3.b), var_1.zxz << (vec3<u32>(1u, 1u, countOneBits(_wgslsmith_add_u32(1u, var_3.a))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, u_input.b.yw, -678f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0.wwx, vec3<f32>(global0.x, 795f, global0.x)), _wgslsmith_f_op_vec3_f32(-global0.wzx))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1559f, var_3.d, var_3.d))), _wgslsmith_f_op_vec3_f32(global0.xwx - vec3<f32>(var_3.d, var_3.d, -176f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1006f, 1629f) * global0.wxw))))), _wgslsmith_sub_u32(~1u, ~_wgslsmith_mod_u32(0u, ~u_input.b.x)));
}

