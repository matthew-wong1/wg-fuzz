struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 28>;

var<private> global2: bool = true;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> bool {
    global1 = array<Struct_1, 28>();
    global0 = max(~arg_0.c.wxw, abs(select(~arg_2.c.yyw, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c.x, arg_2.c.x, 0u), arg_0.c.wwx), true)) >> (vec3<u32>(~(20628u | arg_2.c.x), global0.x, 0u) % vec3<u32>(32u)));
    global1 = array<Struct_1, 28>();
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.d.yz)));
    return global0.x <= ~_wgslsmith_dot_vec3_u32(~var_0.c.xzw, vec3<u32>(50565u, 1u >> (arg_0.c.x % 32u), 4294967295u));
}

fn func_2() -> vec3<bool> {
    let var_0 = select(vec3<bool>(!(!(global0.x <= 0u)), true, all(vec4<bool>(global0.x <= global0.x, func_3(global1[_wgslsmith_index_u32(global0.x, 28u)], 1u, global1[_wgslsmith_index_u32(global0.x, 28u)]), all(vec2<bool>(false, false)), false))), !select(vec3<bool>(true, true, all(vec4<bool>(false, true, false, false))), vec3<bool>(true, true, false), vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true)), vec3<bool>(!all(vec3<bool>(true, true, true)), false, true));
    let var_1 = false;
    var var_2 = vec3<i32>(-u_input.d.x << (reverseBits(global0.x) % 32u), 2147483647i, ~u_input.a);
    var var_3 = ~(~20881u);
    var var_4 = -firstTrailingBit(2147483647i);
    return select(select(!vec3<bool>(!var_1, var_0.x, true), !var_0, true), var_0, var_0);
}

fn func_1() -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~(~(~global0.x)), 28u)];
    var var_1 = select(vec3<bool>(var_0.d.x < _wgslsmith_f_op_f32(f32(-1f) * -459f), true, true), func_2(), func_2());
    let var_2 = true;
    var var_3 = global1[_wgslsmith_index_u32(~40872u, 28u)];
    global1 = array<Struct_1, 28>();
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.d.x, var_3.a)))), var_3.b, _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(33963u, 18898u, 1u, var_0.c.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(22636u, 0u, var_3.c.x, global0.x), vec4<u32>(0u, var_0.c.x, var_0.c.x, 1u))), var_3.c), _wgslsmith_f_op_vec3_f32(var_3.d - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, 2285f, var_0.a) + var_0.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = func_2().x;
    let var_1 = vec3<i32>(max(_wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.b.x, 42511i), -u_input.d.x), ~(-1i)), u_input.d.x, ~(i32(-1i) * -14173i)) & _wgslsmith_div_vec3_i32(var_0.b.yzw, func_1().b.wxx);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.d.x, var_0.d.x, 144f)))))));
    var_0 = global1[_wgslsmith_index_u32(~(~4294967295u), 28u)];
    global1 = array<Struct_1, 28>();
    var var_3 = _wgslsmith_f_op_f32(939f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1241f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d.x)))));
    global0 = firstTrailingBit(var_0.c.zxw & var_0.c.xzz);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, global0.yx);
}

