struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_1,
    d: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool;

var<private> global2: array<Struct_3, 2>;

var<private> global3: Struct_4;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = global3.b.b;
    global0 = vec2<i32>(reverseBits(global3.b.e), var_0.x) ^ ~(u_input.c >> (vec2<u32>(_wgslsmith_add_u32(0u, global3.b.c.x), abs(global3.b.c.x)) % vec2<u32>(32u)));
    let var_1 = global2[_wgslsmith_index_u32(abs(min(u_input.a, 44039u)) >> (~8888u % 32u), 2u)];
    return -1888f;
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = Struct_1(!(~global3.d <= u_input.a) && global3.c.b, !global3.c.b, (i32(-1i) * -44267i) > _wgslsmith_sub_i32(select(_wgslsmith_add_i32(global0.x, global0.x), -7333i, all(vec3<bool>(false, global3.a.x, true))), -24899i), global3.a.x);
    global2 = array<Struct_3, 2>();
    let var_2 = u_input.a;
    return global0.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>) -> u32 {
    let var_0 = Struct_5(~abs(abs(vec2<i32>(u_input.b, global3.b.e)) >> (global3.b.c.ww % vec2<u32>(32u))), vec3<i32>(-20459i, 2299i, -17916i));
    var var_1 = vec4<i32>(func_2(global3.b.c.yxz), firstTrailingBit(-u_input.b << (1u % 32u)), -_wgslsmith_mult_i32(u_input.d.x, reverseBits(global3.b.b.x)), ~global0.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0)))), global3.b.c.wy);
    let var_3 = var_0;
    var_1 = countOneBits(-vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, var_1.x), 0i, 1i, var_1.x));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f), 1f), 1006f);
    let var_1 = min(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-1i, global0.x) ^ global3.b.b.xx), ~u_input.c, ~vec2<i32>(_wgslsmith_div_i32(-1i, -29340i), _wgslsmith_div_i32(-26782i, global0.x))), vec2<i32>(global3.b.e, ~(i32(-1i) * -u_input.d.x)));
    let var_2 = global3.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, ~1u, abs(func_1(vec2<f32>(var_0.x, var_0.x), vec3<bool>(true, var_2.d, false))) & 4294967295u, u_input.a));
}

