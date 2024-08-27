struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21>;

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 32080u, 83884u, 1u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 21>();
    let var_0 = max(~16548u, _wgslsmith_mult_u32(u_input.b.x, 29984u));
    global3 = u_input.b;
    let var_1 = true;
    global0 = array<vec2<bool>, 21>();
    let var_2 = 4755u;
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), ~u_input.a.x);
    global3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~u_input.a.x, u_input.a.x));
}

