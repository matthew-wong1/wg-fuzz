struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14>;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = u_input.d | u_input.d;
    let var_1 = -775f;
    global0 = array<vec4<f32>, 14>();
    let var_2 = Struct_3(select(abs(firstTrailingBit(~vec2<u32>(var_0.x, 75184u))), ~u_input.d.xz, false), vec2<i32>(u_input.b, -u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(986f, global1.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(select(-1707f, var_1, true)), -1371f))), _wgslsmith_dot_vec3_i32(-min(u_input.a.yzw, ~vec3<i32>(u_input.b, -1i, u_input.e)), _wgslsmith_mult_vec3_i32(vec3<i32>(~(-1i), _wgslsmith_div_i32(-24120i, -22270i), 2147483647i), u_input.a.xyy)), Struct_2(Struct_1(global1.a, vec3<f32>(651f, _wgslsmith_f_op_f32(sign(-3109f)), _wgslsmith_f_op_f32(-var_1))), ~vec3<i32>(~(-2147483647i), ~2147483647i, -1i >> (var_0.x % 32u))));
    var var_3 = var_2.e.a.a.yy;
    return vec2<i32>(countOneBits(-(~(i32(-1i) * -2147483647i))), u_input.a.x);
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = -(~arg_1);
    let var_1 = Struct_2(Struct_1(select(global1.a, vec4<bool>(-18342i == u_input.b, any(vec4<bool>(true, global1.a.x, true, global1.a.x)), global1.a.x, true), global1.a), global1.b), ~abs(~u_input.a.zyz));
    var_0 = _wgslsmith_dot_vec2_i32(-func_3(), ~vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(arg_1, arg_1, _wgslsmith_mod_i32(u_input.b, u_input.e))));
    var_0 = 53652i;
    global0 = array<vec4<f32>, 14>();
    return Struct_1(!select(var_1.a.a, select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), var_1.a.a, all(global1.a.wx)), global1.a.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a.b.x, 1841f, _wgslsmith_f_op_f32(f32(-1f) * -830f)))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.d.x, 14u)] - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global1.b.x, global1.b.x)), -356f, 1f, _wgslsmith_f_op_f32(global1.b.x * 1000f)) + global0[_wgslsmith_index_u32(u_input.d.x, 14u)])) * global0[_wgslsmith_index_u32(5318u, 14u)]);
    global0 = array<vec4<f32>, 14>();
    let var_1 = Struct_3(u_input.d.yy, u_input.a.zx << (u_input.d.xx % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(789f + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-580f)) + _wgslsmith_f_op_f32(round(-1000f))) - -1596f)), 1i, Struct_2(func_2(true, _wgslsmith_mult_i32(u_input.b, reverseBits(-1i))), vec3<i32>(u_input.b, _wgslsmith_mult_i32(u_input.e, u_input.b), _wgslsmith_dot_vec2_i32(~u_input.a.xx, _wgslsmith_mod_vec2_i32(u_input.a.xz, u_input.a.yw)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1006f, var_1.e.a.b.x, -1363f, 543f))) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.e.a.b.x), global1.b.x, _wgslsmith_f_op_f32(floor(var_0.x)), 548f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-508f, -1000f, var_1.c.x, _wgslsmith_f_op_f32(floor(global1.b.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -861f, 1000f, 1000f) * global0[_wgslsmith_index_u32(19520u, 14u)]), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_1.a.x, 14u)])))))));
    let var_3 = var_1.b;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global1.a.x, any(global1.a.zww), !(global1.b.x <= _wgslsmith_f_op_f32(-global1.b.x)), true);
    let var_1 = select(func_1(), ~firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.c, 72080u), 25435u, min(u_input.c, 0u))), _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(-1048f - -893f)) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(395f, global1.b.x, var_0.x))))));
    global1 = func_2(true, -6426i);
    let var_2 = u_input.d.yz;
    let var_3 = all(var_0.zxz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(ceil(1550f))));
}

