struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<bool, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> Struct_1 {
    return Struct_1(global0.a, global1.b << (_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x | 1u, ~global0.b.x, 4294967295u), vec3<u32>(59670u, 3188u, global0.b.x << (0u % 32u))) % vec3<u32>(32u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_1(~(-_wgslsmith_add_vec2_i32(vec2<i32>(arg_2, -57891i) | global0.a, arg_0.a)), global0.b);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(global0.b.x, 16009u), ~arg_0.b.x), select(vec3<u32>(0u, _wgslsmith_mult_u32(global0.b.x, arg_0.b.x), global1.b.x), global0.b, !global2[_wgslsmith_index_u32(global1.b.x, 21u)])) << (4294967295u % 32u), 21u)];
    global2 = array<bool, 21>();
    global1 = var_0;
    return select(vec2<bool>(45608i == (-42593i << (arg_0.b.x % 32u)), select(global2[_wgslsmith_index_u32(119577u, 21u)], global2[_wgslsmith_index_u32(abs(~0u), 21u)], global2[_wgslsmith_index_u32(~1u, 21u)])), select(vec2<bool>(!(!global2[_wgslsmith_index_u32(43153u, 21u)]), true), !select(select(vec2<bool>(true, true), vec2<bool>(arg_1, false), global2[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<bool>(global2[_wgslsmith_index_u32(global1.b.x, 21u)], true), arg_1 | false), vec2<bool>(true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(arg_1, arg_1)), global2[_wgslsmith_index_u32(var_1.b.x, 21u)] | global2[_wgslsmith_index_u32(u_input.a.x, 21u)]))));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(select(global1.a, vec2<i32>(global0.a.x, abs(10385i)), (i32(-1i) * -global0.a.x) != global1.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(~6456u, global0.b.x, u_input.a.x) << (global1.b % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(select(~vec3<u32>(global1.b.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u), select(vec3<bool>(global2[_wgslsmith_index_u32(61464u, 21u)], false, global2[_wgslsmith_index_u32(0u, 21u)]), vec3<bool>(global2[_wgslsmith_index_u32(global1.b.x, 21u)], true, false), vec3<bool>(global2[_wgslsmith_index_u32(43649u, 21u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 21u)]))), vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 94642u), _wgslsmith_clamp_u32(global0.b.x, 28430u, u_input.a.x), 1u))));
    let var_1 = func_1();
    var var_2 = select(!func_3(Struct_1(var_0.a, global1.b), global2[_wgslsmith_index_u32(~max(4294967295u, global0.b.x), 21u)], _wgslsmith_sub_i32(-9972i, global1.a.x)), select(select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(global1.b.x, 21u)], global2[_wgslsmith_index_u32(54387u, 21u)]), vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(global1.b.x, 21u)], true)), !vec2<bool>(global2[_wgslsmith_index_u32(1u, 21u)], true), global2[_wgslsmith_index_u32(var_1.b.x, 21u)]), vec2<bool>(global2[_wgslsmith_index_u32(abs(1u), 21u)], all(vec3<bool>(true, false, true))), false), vec2<bool>(global2[_wgslsmith_index_u32(~global1.b.x >> (1u % 32u), 21u)], all(vec4<bool>(true, false, global2[_wgslsmith_index_u32(var_1.b.x, 21u)], global2[_wgslsmith_index_u32(60562u, 21u)]))), true), !(!func_3(var_1, !global2[_wgslsmith_index_u32(42567u, 21u)], _wgslsmith_mult_i32(global0.a.x, 1i))));
    return vec2<bool>(false, !all(select(vec2<bool>(var_2.x, global2[_wgslsmith_index_u32(var_0.b.x, 21u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 21u)], true), vec2<bool>(global2[_wgslsmith_index_u32(1u, 21u)], true), vec2<bool>(var_2.x, global2[_wgslsmith_index_u32(u_input.a.x, 21u)])), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = -25324i == ((global0.a.x | global0.a.x) | global1.a.x);
    let var_1 = select(vec2<bool>(true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(4187u, 21u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], true, true), vec3<bool>(global2[_wgslsmith_index_u32(global1.b.x, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], false)), true))), select(func_2(), select(vec2<bool>(all(vec2<bool>(true, global2[_wgslsmith_index_u32(global0.b.x, 21u)])), false), func_2(), true), vec2<bool>(true, global2[_wgslsmith_index_u32(abs(~u_input.a.x), 21u)])), false);
    global0 = func_1();
    var_0 = global2[_wgslsmith_index_u32(~min(1u, ~(~u_input.a.x)), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1599f - 693f) * _wgslsmith_f_op_f32(-122f + 1156f)) + _wgslsmith_f_op_f32(select(542f, _wgslsmith_f_op_f32(ceil(531f)), func_3(Struct_1(global1.a, global1.b), var_1.x, 2147483647i).x))), 3313f), vec4<u32>(global0.b.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(global1.b.x, global1.b.x), 0u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, 24504u), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.b.x, global1.b.x), vec2<u32>(u_input.a.x, global1.b.x))) % 32u), max(func_1().b.x, ~39849u ^ func_1().b.x), ~(~u_input.a.x)));
}

