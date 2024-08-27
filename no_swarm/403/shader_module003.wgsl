struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27>;

var<private> global1: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(1u, 69120u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 6411u, 27110u), vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(55832u, 1u, 0u, 4294967295u), vec4<u32>(6672u, 0u, 18426u, 0u), vec4<u32>(21947u, 1u, 0u, 29262u), vec4<u32>(48240u, 0u, 10028u, 0u), vec4<u32>(0u, 4294967295u, 1861u, 23585u), vec4<u32>(19905u, 25539u, 0u, 82160u), vec4<u32>(9670u, 41323u, 1u, 1u), vec4<u32>(17155u, 4294967295u, 4294967295u, 28046u), vec4<u32>(61042u, 0u, 31358u, 0u), vec4<u32>(3357u, 51053u, 1u, 33774u), vec4<u32>(0u, 0u, 2962u, 1u), vec4<u32>(6516u, 28296u, 0u, 20652u), vec4<u32>(96704u, 4294967295u, 51663u, 47455u), vec4<u32>(19527u, 14817u, 3651u, 23415u), vec4<u32>(5686u, 24578u, 0u, 34284u), vec4<u32>(29648u, 4294967295u, 24324u, 1u), vec4<u32>(1u, 4294967295u, 64898u, 0u));

var<private> global2: array<bool, 24> = array<bool, 24>(false, false, false, true, false, true, false, false, true, true, true, false, true, false, false, false, true, true, false, false, false, true, false, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 24>();
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 24u)] | any(!(!vec3<bool>(true, global2[_wgslsmith_index_u32(35511u, 24u)], false)));
    var var_1 = false;
    var var_2 = u_input.a.x;
    let var_3 = max(~(~(~(global1[_wgslsmith_index_u32(1u, 20u)] | global1[_wgslsmith_index_u32(4294967295u, 20u)]))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, ~1u), 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, 0i, select(~firstLeadingBit(abs(var_3.x)), var_3.x, ~var_3.x == 1u), select(_wgslsmith_mult_i32(18170i, 1i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a.x, 3149i), u_input.b.x), false) ^ (i32(-1i) * -u_input.b.x));
}

