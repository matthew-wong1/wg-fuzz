struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(0i, 0i, -1i), vec3<i32>(21836i, -36732i, -10452i), vec3<i32>(-38546i, 0i, 2147483647i), vec3<i32>(-13082i, 1i, 27947i), vec3<i32>(1i, 0i, 1i), vec3<i32>(1i, -44046i, i32(-2147483648)), vec3<i32>(37179i, 0i, -10380i), vec3<i32>(12703i, 7844i, 1138i), vec3<i32>(9729i, i32(-2147483648), -1i), vec3<i32>(2147483647i, 17218i, -23413i), vec3<i32>(-23172i, 2147483647i, -1i), vec3<i32>(-6276i, 49856i, -1i), vec3<i32>(29242i, -1i, 0i), vec3<i32>(-1i, 71274i, -54836i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(i32(-2147483648), -80417i, 33825i), vec3<i32>(84632i, -56378i, -9232i), vec3<i32>(38582i, -54067i, 1i), vec3<i32>(0i, 0i, -29003i), vec3<i32>(0i, -30451i, 0i), vec3<i32>(-1i, 2147483647i, -18785i), vec3<i32>(-55702i, 37864i, -12926i), vec3<i32>(0i, 1i, -3913i), vec3<i32>(17021i, -1i, i32(-2147483648)), vec3<i32>(0i, 31980i, 22430i));

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(33100u, vec4<i32>(i32(-2147483648), 1i, 26040i, -1i), 96723u), Struct_1(6664u, vec4<i32>(1i, 1i, 16325i, 11672i), 1u), Struct_1(4294967295u, vec4<i32>(i32(-2147483648), -34663i, -62524i, 1i), 1u), Struct_1(107459u, vec4<i32>(0i, 1i, -55346i, -106158i), 872u), Struct_1(9526u, vec4<i32>(22760i, 21131i, 51437i, -15294i), 0u));

var<private> global3: u32 = 1u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> bool {
    var var_0 = global0.x != arg_0;
    var var_1 = vec2<u32>(u_input.a.x, u_input.c) << (u_input.d.zz % vec2<u32>(32u));
    var var_2 = Struct_1(u_input.a.x, vec4<i32>(~(-16328i), ~u_input.b, -(u_input.b << (firstLeadingBit(45644u) % 32u)), _wgslsmith_mod_i32(~1i, ~(-u_input.b))), 12441u);
    global2 = array<Struct_1, 5>();
    var_1 = u_input.a.yz;
    return arg_1.x;
}

fn func_2() -> Struct_1 {
    var var_0 = 1i;
    global2 = array<Struct_1, 5>();
    let var_1 = global2[_wgslsmith_index_u32(u_input.c, 5u)];
    global3 = (4294967295u & ~(u_input.d.x >> (1u % 32u))) >> (1u % 32u);
    global3 = ~_wgslsmith_mult_u32(0u, abs(reverseBits(var_1.a)));
    return Struct_1(u_input.c, var_1.b, 1u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> bool {
    global2 = array<Struct_1, 5>();
    var var_0 = global2[_wgslsmith_index_u32(max(countOneBits(arg_1.a | ~u_input.c), _wgslsmith_mod_u32(_wgslsmith_div_u32(abs(_wgslsmith_sub_u32(arg_1.a, arg_1.c)), countOneBits(arg_1.a)), ~(~firstLeadingBit(1u)))), 5u)];
    global3 = countOneBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(countOneBits(1u), _wgslsmith_clamp_u32(reverseBits(4294967295u), var_0.c, 16793u)), ~min(~55524u, u_input.d.x)));
    var var_1 = vec2<i32>(arg_0, -19841i);
    var var_2 = ~_wgslsmith_mult_i32(~1i >> (var_0.c % 32u), reverseBits(var_1.x));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global3 = 1u;
    global1 = array<vec3<i32>, 25>();
    let var_1 = select(vec4<bool>(func_1(-652f, vec4<bool>(true, true, true, true)), false, true, false), !vec4<bool>((u_input.b == u_input.b) || true, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, false, true)) != select(false, true, true), any(vec3<bool>(true, true, false))), vec4<bool>(func_3(u_input.b, func_2(), -u_input.b, global0.zy) | true, true, false, any(vec2<bool>(true, all(vec3<bool>(false, true, false))))));
    global1 = array<vec3<i32>, 25>();
    var var_2 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.d.x, _wgslsmith_div_u32(select(_wgslsmith_div_u32(u_input.d.x, 4294967295u), 4294967295u | u_input.a.x, true), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c, u_input.d.x, u_input.d.x), ~u_input.c))));
}

