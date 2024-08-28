struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, false)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> vec2<u32> {
    let var_0 = !arg_1;
    global0 = array<Struct_1, 7>();
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(-u_input.d.x, -51157i), reverseBits(_wgslsmith_add_i32(1i, u_input.e))) ^ u_input.d.zw;
    let var_2 = ~abs(~(~abs(u_input.c.xxy)));
    let var_3 = 1001f;
    return var_2.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(func_1(global0[_wgslsmith_index_u32(u_input.b | u_input.c.x, 7u)], !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))) | vec2<u32>(firstLeadingBit(u_input.c.x) | _wgslsmith_add_u32(u_input.c.x, u_input.c.x), 1u), ~(~vec2<u32>(u_input.b, 16386u) ^ vec2<u32>(func_1(global0[_wgslsmith_index_u32(1686u, 7u)], vec3<bool>(false, false, false)).x, u_input.b)));
    let var_1 = u_input.d;
    let var_2 = Struct_1(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, true), u_input.a < u_input.a), vec2<bool>(true, true), true), !vec3<bool>(true, true, _wgslsmith_div_i32(u_input.a, u_input.e) <= 51925i));
    global0 = array<Struct_1, 7>();
    let var_3 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_1.x), _wgslsmith_div_vec2_i32(~reverseBits(~u_input.d.yw), -_wgslsmith_mod_vec2_i32(select(vec2<i32>(54722i, 1i), var_1.yw, true), vec2<i32>(u_input.d.x, 12924i) & vec2<i32>(2147483647i, -2147483647i))), _wgslsmith_add_i32(u_input.d.x, ~min(_wgslsmith_mod_i32(45719i, u_input.d.x), _wgslsmith_add_i32(-60890i, var_1.x))));
}

