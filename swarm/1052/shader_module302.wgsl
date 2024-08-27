struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(20911i, i32(-2147483648), 10786i, i32(-2147483648), 0i, 2147483647i, 15159i, 9172i, 1i, -37554i, -66924i, 0i, 0i, 1i, i32(-2147483648), 47782i, -38527i, -29070i, 15074i, 1i, 44076i, 30097i, -1i, -4828i, 0i, 24202i, -46740i);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<i32>(54529i, -22803i, -1i, -1i)), Struct_1(vec4<i32>(1226i, 2147483647i, 1i, 13489i)), Struct_1(vec4<i32>(-7417i, i32(-2147483648), -17249i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), -1i, -25113i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, 1i, 0i, -21485i)));

var<private> global3: array<vec4<bool>, 31>;

var<private> global4: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(0u, 4294967295u, 1u, 5082u), vec4<u32>(28453u, 1u, 1u, 54619u), vec4<u32>(88661u, 0u, 47217u, 15524u), vec4<u32>(9011u, 4294967295u, 1u, 51567u), vec4<u32>(83598u, 52751u, 1u, 4294967295u), vec4<u32>(5829u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(16995u, 62375u, 8192u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 45939u, 0u), vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(0u, 4294967295u, 34174u, 7260u), vec4<u32>(4294967295u, 109720u, 32450u, 6439u), vec4<u32>(52205u, 4294967295u, 8686u, 4294967295u), vec4<u32>(4294967295u, 43678u, 0u, 69190u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(75708u, 8747u, 16091u, 1u), vec4<u32>(0u, 18155u, 16883u, 47447u), vec4<u32>(1u, 89965u, 38u, 4294967295u), vec4<u32>(4294967295u, 0u, 5123u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(16616u, 45763u, 55471u, 52022u), vec4<u32>(1u, 13470u, 1u, 43826u), vec4<u32>(4294967295u, 0u, 21606u, 53727u), vec4<u32>(52598u, 43598u, 16874u, 38418u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1((~_wgslsmith_mod_vec4_i32(vec4<i32>(global1.a.x, global0[_wgslsmith_index_u32(51880u, 27u)], 2147483647i, global1.a.x), global1.a) | global1.a) & u_input.c);
    let var_0 = _wgslsmith_sub_vec4_u32(global4[_wgslsmith_index_u32(~(~4294967295u), 24u)], ~(~(~vec4<u32>(30621u, 10774u, 24248u, 5560u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~abs(u_input.a.x), -23125i));
}

