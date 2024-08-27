struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(false, vec2<i32>(3745i, 31971i), vec4<u32>(0u, 47092u, 0u, 910u), Struct_1(vec2<bool>(false, false), 7443i, -1i), Struct_1(vec2<bool>(true, true), i32(-2147483648), -34518i)), Struct_2(false, vec2<i32>(-54849i, 26764i), vec4<u32>(0u, 50314u, 1u, 4294967295u), Struct_1(vec2<bool>(true, true), 33611i, 15856i), Struct_1(vec2<bool>(false, false), 19582i, 18413i)), Struct_2(false, vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(0u, 0u, 4294967295u, 51606u), Struct_1(vec2<bool>(false, true), -49383i, 25964i), Struct_1(vec2<bool>(true, false), -46626i, -27177i)), Struct_2(false, vec2<i32>(-5844i, i32(-2147483648)), vec4<u32>(609u, 1u, 76692u, 1u), Struct_1(vec2<bool>(false, true), -1i, -38745i), Struct_1(vec2<bool>(false, true), 38307i, -14531i)), Struct_2(true, vec2<i32>(-1i, i32(-2147483648)), vec4<u32>(33199u, 1u, 1u, 120618u), Struct_1(vec2<bool>(true, true), -48781i, 1i), Struct_1(vec2<bool>(true, true), 2147483647i, 0i)), Struct_2(false, vec2<i32>(-32607i, 18791i), vec4<u32>(1u, 30594u, 18548u, 4294967295u), Struct_1(vec2<bool>(false, true), 1i, -1i), Struct_1(vec2<bool>(true, true), 2147483647i, -2232i)), Struct_2(true, vec2<i32>(-3927i, 59355i), vec4<u32>(9145u, 69254u, 0u, 0u), Struct_1(vec2<bool>(true, false), -14809i, i32(-2147483648)), Struct_1(vec2<bool>(true, true), 9767i, -1i)), Struct_2(true, vec2<i32>(-1i, 28530i), vec4<u32>(72612u, 59550u, 0u, 0u), Struct_1(vec2<bool>(true, true), -1i, -102844i), Struct_1(vec2<bool>(true, true), 15333i, -33179i)), Struct_2(false, vec2<i32>(-4606i, 24403i), vec4<u32>(49176u, 4294967295u, 18825u, 4294967295u), Struct_1(vec2<bool>(false, true), i32(-2147483648), 12562i), Struct_1(vec2<bool>(false, true), 1i, 0i)), Struct_2(false, vec2<i32>(1i, 12533i), vec4<u32>(76881u, 0u, 0u, 25108u), Struct_1(vec2<bool>(false, false), 69108i, -1799i), Struct_1(vec2<bool>(false, true), 5303i, -5463i)), Struct_2(false, vec2<i32>(2147483647i, -21813i), vec4<u32>(0u, 0u, 53511u, 26806u), Struct_1(vec2<bool>(false, false), -33484i, 6935i), Struct_1(vec2<bool>(false, false), i32(-2147483648), 0i)), Struct_2(true, vec2<i32>(2147483647i, -41669i), vec4<u32>(1u, 1u, 51266u, 47210u), Struct_1(vec2<bool>(true, true), i32(-2147483648), 0i), Struct_1(vec2<bool>(false, false), 2147483647i, 20726i)), Struct_2(false, vec2<i32>(52056i, 32670i), vec4<u32>(0u, 4294967295u, 54140u, 1u), Struct_1(vec2<bool>(true, true), 0i, -6559i), Struct_1(vec2<bool>(false, false), 2147483647i, 20931i)), Struct_2(false, vec2<i32>(31019i, 1i), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), Struct_1(vec2<bool>(false, false), -1i, -50120i), Struct_1(vec2<bool>(true, false), 98980i, 2147483647i)), Struct_2(true, vec2<i32>(-29907i, 0i), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), Struct_1(vec2<bool>(true, false), 2147483647i, 1i), Struct_1(vec2<bool>(false, false), 15264i, 59234i)), Struct_2(true, vec2<i32>(-56715i, -47304i), vec4<u32>(27045u, 18382u, 1u, 20150u), Struct_1(vec2<bool>(true, false), 0i, 2147483647i), Struct_1(vec2<bool>(false, true), 45033i, 2147483647i)), Struct_2(true, vec2<i32>(1i, i32(-2147483648)), vec4<u32>(9300u, 47210u, 4294967295u, 4294967295u), Struct_1(vec2<bool>(true, false), 0i, 2147483647i), Struct_1(vec2<bool>(false, true), -41403i, i32(-2147483648))), Struct_2(false, vec2<i32>(12380i, 29639i), vec4<u32>(7022u, 4294967295u, 1u, 41039u), Struct_1(vec2<bool>(false, true), 2147483647i, 51353i), Struct_1(vec2<bool>(false, true), i32(-2147483648), -49549i)), Struct_2(false, vec2<i32>(i32(-2147483648), -9476i), vec4<u32>(1u, 75168u, 1u, 35604u), Struct_1(vec2<bool>(true, false), -1i, 1i), Struct_1(vec2<bool>(true, true), -1936i, i32(-2147483648))), Struct_2(true, vec2<i32>(-14204i, -20564i), vec4<u32>(4294967295u, 1u, 38676u, 0u), Struct_1(vec2<bool>(true, false), 6261i, -20045i), Struct_1(vec2<bool>(true, true), 22522i, i32(-2147483648))), Struct_2(false, vec2<i32>(3259i, 20408i), vec4<u32>(0u, 68427u, 4294967295u, 37922u), Struct_1(vec2<bool>(false, false), 2147483647i, 11525i), Struct_1(vec2<bool>(true, false), 2147483647i, -19388i)), Struct_2(true, vec2<i32>(-14292i, 64981i), vec4<u32>(12561u, 0u, 1u, 4294967295u), Struct_1(vec2<bool>(false, true), -3103i, 2147483647i), Struct_1(vec2<bool>(false, true), 21957i, 0i)), Struct_2(false, vec2<i32>(10015i, 1i), vec4<u32>(1u, 4294967295u, 17308u, 33526u), Struct_1(vec2<bool>(false, true), -1i, -2420i), Struct_1(vec2<bool>(false, false), -1i, -20630i)));

var<private> global2: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(-169f, -2183f, -489f, -2241f), vec4<f32>(798f, 210f, -1944f, -1371f), vec4<f32>(-1166f, -1367f, 1190f, 166f), vec4<f32>(-1127f, 152f, -1616f, 1000f));

var<private> global3: i32;

var<private> global4: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = u_input.a;
    let var_1 = 1i;
    global1 = array<Struct_2, 23>();
    global1 = array<Struct_2, 23>();
    var var_2 = 0i;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global1 = array<Struct_2, 23>();
    global3 = 23911i;
    global3 = -24807i;
    global1 = array<Struct_2, 23>();
    global1 = array<Struct_2, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(u_input.a), func_1(global2[_wgslsmith_index_u32(u_input.a, 4u)], false, Struct_1(vec2<bool>(false, true), 2147483647i, 43205i)), _wgslsmith_sub_u32(u_input.a, 358u), _wgslsmith_div_u32(u_input.a, u_input.a)), max(~vec4<u32>(47451u, 17435u, 1u, u_input.a), ~vec4<u32>(21899u, 0u, u_input.a, 1u)), vec4<u32>(4294967295u, ~4294967295u, u_input.a >> (u_input.a % 32u), _wgslsmith_add_u32(u_input.a, 8820u)))), firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(44124u, 78466u), vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(u_input.a, u_input.a)), max(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(88238u, 0u) >> (vec2<u32>(u_input.a, 21575u) % vec2<u32>(32u))))), u_input.a, vec4<f32>(-1016f, 1f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1272f * -152f)))));
}

