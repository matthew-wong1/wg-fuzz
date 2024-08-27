struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_2(true, Struct_1(vec2<u32>(17605u, 53672u), 2147483647i), Struct_1(vec2<u32>(39860u, 4716u), -7074i), Struct_1(vec2<u32>(4294967295u, 1u), -13046i)), -9273i), Struct_3(Struct_2(true, Struct_1(vec2<u32>(11131u, 65591u), 18480i), Struct_1(vec2<u32>(4294967295u, 3922u), -13971i), Struct_1(vec2<u32>(4294967295u, 30239u), -4258i)), 722i), Struct_3(Struct_2(true, Struct_1(vec2<u32>(21676u, 1u), 1i), Struct_1(vec2<u32>(4294967295u, 0u), 2147483647i), Struct_1(vec2<u32>(4294967295u, 140984u), -26307i)), -16273i), Struct_3(Struct_2(false, Struct_1(vec2<u32>(60495u, 1u), 27968i), Struct_1(vec2<u32>(1u, 1u), -20988i), Struct_1(vec2<u32>(73268u, 1u), -17177i)), i32(-2147483648)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(17679u, 9563u), -21723i), Struct_1(vec2<u32>(64490u, 4074u), i32(-2147483648)), Struct_1(vec2<u32>(72612u, 48716u), 0i)), -1i), Struct_3(Struct_2(true, Struct_1(vec2<u32>(1u, 14433u), 0i), Struct_1(vec2<u32>(61759u, 0u), 0i), Struct_1(vec2<u32>(5360u, 4821u), 0i)), -14238i), Struct_3(Struct_2(true, Struct_1(vec2<u32>(16454u, 20833u), -47748i), Struct_1(vec2<u32>(0u, 11027u), 0i), Struct_1(vec2<u32>(30598u, 27761u), 1i)), -5727i), Struct_3(Struct_2(false, Struct_1(vec2<u32>(0u, 0u), i32(-2147483648)), Struct_1(vec2<u32>(10240u, 0u), 0i), Struct_1(vec2<u32>(1u, 0u), -1i)), i32(-2147483648)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(30227u, 4294967295u), 18897i), Struct_1(vec2<u32>(19871u, 74103u), 65882i), Struct_1(vec2<u32>(1u, 4294967295u), 9905i)), 0i), Struct_3(Struct_2(false, Struct_1(vec2<u32>(25611u, 28643u), i32(-2147483648)), Struct_1(vec2<u32>(46773u, 1u), 0i), Struct_1(vec2<u32>(54840u, 4294967295u), 39304i)), 0i), Struct_3(Struct_2(true, Struct_1(vec2<u32>(4294967295u, 4294967295u), 2147483647i), Struct_1(vec2<u32>(35296u, 4294967295u), 0i), Struct_1(vec2<u32>(0u, 5848u), 37478i)), i32(-2147483648)), Struct_3(Struct_2(true, Struct_1(vec2<u32>(25070u, 4294967295u), -1i), Struct_1(vec2<u32>(45884u, 122353u), -35450i), Struct_1(vec2<u32>(1u, 69784u), i32(-2147483648))), 58339i), Struct_3(Struct_2(false, Struct_1(vec2<u32>(17593u, 4294967295u), -25439i), Struct_1(vec2<u32>(47281u, 59102u), -20545i), Struct_1(vec2<u32>(1u, 15625u), i32(-2147483648))), 1i), Struct_3(Struct_2(true, Struct_1(vec2<u32>(0u, 1u), 8919i), Struct_1(vec2<u32>(7208u, 0u), 103550i), Struct_1(vec2<u32>(10655u, 1u), -1i)), 0i), Struct_3(Struct_2(false, Struct_1(vec2<u32>(3669u, 4294967295u), 10021i), Struct_1(vec2<u32>(0u, 0u), 0i), Struct_1(vec2<u32>(9127u, 27294u), -1i)), -73276i), Struct_3(Struct_2(true, Struct_1(vec2<u32>(0u, 1u), 1i), Struct_1(vec2<u32>(49294u, 0u), 0i), Struct_1(vec2<u32>(4294967295u, 48965u), 2147483647i)), 89181i), Struct_3(Struct_2(true, Struct_1(vec2<u32>(16933u, 1u), -1i), Struct_1(vec2<u32>(60855u, 0u), 53830i), Struct_1(vec2<u32>(1u, 4294967295u), 1i)), 2147483647i), Struct_3(Struct_2(true, Struct_1(vec2<u32>(4294967295u, 40321u), 74644i), Struct_1(vec2<u32>(1u, 4294967295u), 1i), Struct_1(vec2<u32>(0u, 41478u), -2430i)), 1i), Struct_3(Struct_2(true, Struct_1(vec2<u32>(4294967295u, 33266u), -36393i), Struct_1(vec2<u32>(0u, 60215u), 30706i), Struct_1(vec2<u32>(39706u, 4294967295u), 13245i)), -55476i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    return true;
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    let var_0 = (vec3<i32>(-1i) * -abs(-vec3<i32>(u_input.a.x, u_input.a.x, 8050i))) << (vec3<u32>(u_input.b.x, ~select(u_input.b.x, _wgslsmith_add_u32(16512u, 0u), false), ~_wgslsmith_dot_vec2_u32(vec2<u32>(10547u, 5052u), ~u_input.d)) % vec3<u32>(32u));
    global0 = array<Struct_3, 19>();
    var var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(u_input.d.x < u_input.d.x, true, any(vec3<bool>(true, true, true)))));
    return Struct_2(any(select(select(select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(false, true, var_1.x, var_1.x), true), !vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, true, var_1.x, var_1.x)), !select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, true), false))), Struct_1(vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, 0u | u_input.c.x), ~(~62407u)), 0i), Struct_1((vec2<u32>(u_input.b.x, 6889u) << ((vec2<u32>(u_input.c.x, u_input.d.x) | u_input.d) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.d.x, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, u_input.b.x), u_input.c)), u_input.a.x), Struct_1(vec2<u32>(min(u_input.c.x, u_input.c.x), 4294967295u) | (~u_input.b.wy | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.c.x), vec2<u32>(36380u, 1u))), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 19>();
    let var_0 = !func_1(u_input.b);
    var var_1 = func_2();
    let var_2 = 409f;
    global0 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 4384u), vec4<i32>(1i, 34955i, firstLeadingBit(-select(-2729i, 12827i, var_1.a)), -3194i), -_wgslsmith_add_i32(-1i, 2333i));
}

