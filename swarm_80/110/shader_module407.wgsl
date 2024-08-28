struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 2>;

var<private> global2: Struct_3;

var<private> global3: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    global0 = max(5198i, 1i);
    global3 = Struct_2(abs(-global3.a), global3.b, min(reverseBits(~arg_1.a << (arg_0.x % 32u)), 4294967295u));
    let var_0 = vec3<i32>(global2.b.x, 9661i, -2147483647i);
    global1 = array<u32, 2>();
    global1 = array<u32, 2>();
    return 187f;
}

fn func_4(arg_0: f32) -> i32 {
    global0 = ~u_input.a.x;
    let var_0 = Struct_3(_wgslsmith_clamp_u32(global2.a, ~1u, 75020u), vec2<i32>(countOneBits(firstLeadingBit(_wgslsmith_mult_i32(u_input.b, -1i))), 67184i));
    var var_1 = select(vec2<bool>(true, !(_wgslsmith_div_f32(-538f, arg_0) > arg_0)), vec2<bool>(false, true), (all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))) & true) | !(any(vec2<bool>(true, false)) != true));
    let var_2 = 359i;
    var_1 = !select(vec2<bool>(arg_0 < _wgslsmith_f_op_f32(func_3(vec3<u32>(0u, 88620u, global2.a), Struct_3(global3.c, var_0.b))), true), !vec2<bool>(var_1.x, any(vec2<bool>(true, true))), true | (var_1.x & true));
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.d, firstLeadingBit(max(36146i, var_0.b.x & global2.b.x))), global3.a);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<u32>) -> i32 {
    var var_0 = global3.b;
    let var_1 = arg_0;
    global0 = 1i;
    let var_2 = -728f;
    let var_3 = Struct_2(12078i, Struct_1(vec2<u32>(24541u, firstLeadingBit(reverseBits(1u))), func_4(_wgslsmith_f_op_f32(func_3(vec3<u32>(1u, 22189u, 31583u), Struct_3(u_input.c.x, vec2<i32>(u_input.b, 1i)))))), global2.a);
    return abs(global3.b.b);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_sub_i32(func_2(Struct_3(u_input.c.x, vec2<i32>(1i, 1i)), reverseBits(global2.b), u_input.c & vec4<u32>(1u, u_input.c.x, 32820u, global2.a)), ~(-_wgslsmith_div_i32(global3.b.b, -1i))), global3.b, global3.b.a.x);
    global3 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    global3 = func_1();
    var var_1 = Struct_3(5892u ^ ~u_input.c.x, _wgslsmith_mod_vec2_i32(vec2<i32>(~func_4(780f), global2.b.x), vec2<i32>(func_1().a, u_input.a.x)));
    var var_2 = ~firstLeadingBit(8994u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, u_input.c.wxy, vec2<u32>(_wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(u_input.c.x, global3.b.a.x)), 1u), 34152u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(746f, -250f)))), -1052f));
}

