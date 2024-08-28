struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 18>;

var<private> global2: vec3<bool>;

var<private> global3: bool = false;

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> i32 {
    return min(2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.d.wwy, vec3<i32>(u_input.c.x >> (580u % 32u), countOneBits(u_input.b.x), 2147483647i)), _wgslsmith_mult_i32(firstLeadingBit(firstLeadingBit(2147483647i)), global4.b.x)));
}

fn func_2() -> i32 {
    global4 = global1[_wgslsmith_index_u32(u_input.a, 18u)];
    global3 = global4.c.x;
    var var_0 = Struct_2(any(global4.c), _wgslsmith_sub_u32(1u, ~countOneBits(u_input.a ^ 33921u)));
    let var_1 = u_input.a;
    global3 = true;
    return _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(~(~u_input.c.x), func_3(global1[_wgslsmith_index_u32(~25274u, 18u)])), func_3(global1[_wgslsmith_index_u32(reverseBits(56076u), 18u)]) ^ -2147483647i, -1i), -2147483647i, -1i);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global3 = arg_0.c.x;
    global4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -216f), ~vec2<i32>(select(u_input.c.x, ~2147483647i, global2.x), _wgslsmith_div_i32(func_2(), global4.b.x)), select(arg_0.c, vec2<bool>(all(select(vec2<bool>(global4.c.x, arg_0.c.x), vec2<bool>(global2.x, true), global2.xx)), all(vec3<bool>(arg_0.c.x, global4.c.x, false))), arg_0.c), global4.d, _wgslsmith_div_i32(select(i32(-1i) * -36477i, _wgslsmith_clamp_i32(global4.e, u_input.d.x, 1i) << (4294967295u % 32u), global2.x | arg_0.c.x), _wgslsmith_mod_i32((global4.e | 9264i) & u_input.b.x, ~arg_0.b.x & _wgslsmith_clamp_i32(-2147483647i, -1i, global4.b.x))));
    global4 = global1[_wgslsmith_index_u32(82319u, 18u)];
    let var_0 = _wgslsmith_mod_u32(abs(~(global4.d.x >> (1u % 32u))), _wgslsmith_sub_u32(global4.d.x, 8022u)) < 14998u;
    var var_1 = Struct_2(false, abs(firstLeadingBit(u_input.a) << (~4294967295u % 32u)));
    return Struct_2(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, var_1.a, true), !vec3<bool>(false, true, var_1.a)), select(vec3<bool>(global2.x, false, global2.x), !vec3<bool>(global4.c.x, arg_0.c.x, false), all(vec3<bool>(global4.c.x, arg_0.c.x, var_0))), (global4.d.x != 1u) & true)), ~40103u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.d.x;
    let var_1 = func_1(global1[_wgslsmith_index_u32(~4294967295u, 18u)]);
    var_0 = select(5379u | reverseBits(var_1.b), var_1.b, any(!(!vec4<bool>(global4.c.x, true, var_1.a, global4.c.x))));
    var var_2 = global1[_wgslsmith_index_u32(~global4.d.x, 18u)];
    var var_3 = _wgslsmith_sub_i32(global4.b.x, ~global4.e);
    var var_4 = ~(~_wgslsmith_div_vec3_u32(~(var_2.d & vec3<u32>(var_2.d.x, 77746u, 4294967295u)), vec3<u32>(~global4.d.x, countOneBits(32096u), 47951u & u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-412f, vec4<u32>(_wgslsmith_mult_u32(countOneBits(_wgslsmith_add_u32(global4.d.x, var_2.d.x)), ~(~0u)), u_input.a, ~(~4294967295u), var_1.b), countOneBits(84698u), _wgslsmith_f_op_vec2_f32(global0.yy + _wgslsmith_f_op_vec2_f32(round(global0.xy))), -((max(-1i, var_2.e) & (i32(-1i) * -24254i)) | var_2.b.x));
}

