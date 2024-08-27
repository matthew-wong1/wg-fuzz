struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1608f, -668f, 183f);

var<private> global1: vec3<u32>;

var<private> global2: vec4<bool>;

var<private> global3: vec3<i32>;

var<private> global4: vec4<u32> = vec4<u32>(89731u, 54924u, 10898u, 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global2 = select(!(!vec4<bool>(true, arg_2.c, arg_3.c | global2.x, !global2.x)), vec4<bool>(!(global2.x || arg_2.c), !(arg_2.b.x < 1576u) == false, countOneBits(_wgslsmith_add_i32(arg_3.a.x, 1i)) == u_input.c, select(global2.x, arg_3.c, _wgslsmith_f_op_f32(floor(arg_2.d.x)) > _wgslsmith_f_op_f32(select(arg_1, -554f, true)))), !(!select(vec4<bool>(global2.x, false, true, false), !vec4<bool>(false, arg_3.c, global2.x, false), select(vec4<bool>(arg_3.c, global2.x, arg_2.c, global2.x), vec4<bool>(arg_2.c, true, true, arg_3.c), true))));
    var var_0 = Struct_3(~4294967295u);
    global3 = vec3<i32>(~(~20263i), -_wgslsmith_mod_i32(u_input.a, 29013i), arg_2.a.x);
    let var_1 = global2.ywx;
    let var_2 = Struct_1(-firstLeadingBit(~vec4<i32>(arg_2.a.x, -4566i, arg_3.a.x, 0i)), arg_2.b, all(!vec3<bool>(all(var_1.xx), arg_2.c, false)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-2979f, _wgslsmith_f_op_f32(-arg_2.d.x)), arg_2.d.x, -2125f, -404f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(arg_3.d, arg_2.d)))));
    return 23173u;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    var var_0 = Struct_3(_wgslsmith_mult_u32(~1u, global1.x));
    global1 = vec3<u32>(func_3(Struct_3(45800u), _wgslsmith_f_op_f32(trunc(global0.x)), Struct_1(_wgslsmith_div_vec4_i32(u_input.b, u_input.b), ~vec2<u32>(0u, global4.x), true, vec4<f32>(global0.x, global0.x, global0.x, 163f)), Struct_1(reverseBits(vec4<i32>(0i, 1i, arg_0, u_input.c)), vec2<u32>(4294967295u, 25582u) ^ global1.yz, false & global2.x, vec4<f32>(-1070f, 528f, -1000f, 840f))), global1.x, ~global4.x) ^ vec3<u32>(~64554u, 46780u, ~var_0.a);
    let var_1 = global2.x;
    var var_2 = 10126u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 1428f))))));
    return -1312f;
}

fn func_1() -> bool {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_div_i32(global3.x, 47901i), u_input.c, firstTrailingBit(~(-2147483647i)), -(~_wgslsmith_sub_i32(39550i, 1i))), _wgslsmith_clamp_vec2_u32(global4.xw, ~_wgslsmith_clamp_vec2_u32(global1.zx, vec2<u32>(30346u, global1.x), vec2<u32>(25058u, 1u)) << (vec2<u32>(global4.x, ~51041u) % vec2<u32>(32u)), global4.xz), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global0.x, 895f, global0.x), vec4<f32>(global0.x, global0.x, -888f, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -449f, 1246f))))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(func_2(global3.x, vec4<bool>(global2.x, global2.x, true, global2.x))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(-752f, global0.x)), _wgslsmith_f_op_f32(abs(global0.x)))))));
    var var_1 = false;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.xwx) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -551f, _wgslsmith_f_op_f32(-1182f * global0.x))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, global0.x, -1630f), var_0.d.xwy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d.wwz * vec3<f32>(var_0.d.x, var_0.d.x, -242f)))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(var_0.d.x, global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-81987i, vec4<bool>(false, var_0.c, false, global2.x)))) - _wgslsmith_f_op_f32(-var_0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(947f, var_0.d.x, var_0.c))) + _wgslsmith_f_op_f32(exp2(var_0.d.x)))));
    let var_2 = var_0;
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b, ~vec2<u32>(62201u, _wgslsmith_mod_u32(global1.x, 1u)), func_1(), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1137f - global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1419f)), global0.x), vec4<f32>(_wgslsmith_f_op_f32(global0.x * -958f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global0.x)), -425f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(162f))), -1090f)));
    let var_1 = global0.x;
    let var_2 = Struct_2(Struct_1(countOneBits(vec4<i32>(~u_input.b.x, u_input.c, u_input.b.x, select(u_input.a, -49529i, true))), select(~global1.xx, reverseBits(global1.zy), global2.xx), any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.d))) - _wgslsmith_f_op_vec4_f32(abs(var_0.d)))), !global2.x, var_0.d.xx);
    global3 = countOneBits(~vec3<i32>(reverseBits(var_2.a.a.x), abs(-9587i), -global3.x)) & select(reverseBits(-var_2.a.a.xxy), _wgslsmith_mult_vec3_i32(var_2.a.a.yyw ^ var_2.a.a.xww, -vec3<i32>(1i, u_input.c, global3.x)) >> (firstTrailingBit(vec3<u32>(0u, var_0.b.x, 2684u)) % vec3<u32>(32u)), !global2.yzz);
    var var_3 = var_2;
    let var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, var_3.a.a.x);
}

