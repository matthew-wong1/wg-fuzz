struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: Struct_1 = Struct_1(false);

var<private> global2: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(0u, 45259u), vec2<u32>(0u, 17396u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(98517u, 15486u), vec2<u32>(131037u, 41691u), vec2<u32>(39303u, 7814u), vec2<u32>(15686u, 1u), vec2<u32>(50151u, 21947u), vec2<u32>(0u, 0u), vec2<u32>(1u, 4252u), vec2<u32>(0u, 1u), vec2<u32>(0u, 31268u), vec2<u32>(83407u, 46849u), vec2<u32>(6025u, 35075u), vec2<u32>(6876u, 94136u), vec2<u32>(35411u, 70086u), vec2<u32>(1u, 0u), vec2<u32>(16814u, 4294967295u), vec2<u32>(7524u, 39043u), vec2<u32>(33995u, 12967u), vec2<u32>(0u, 0u));

var<private> global3: vec3<i32>;

var<private> global4: vec4<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 23>();
    let var_0 = Struct_1(true);
    var var_1 = abs(_wgslsmith_add_i32(-(u_input.a | u_input.b), -1i) & -2147483647i);
    let var_2 = var_0;
    var var_3 = !var_2.a;
    global0 = array<bool, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(reverseBits(~u_input.b)), global3.x, vec4<i32>(_wgslsmith_clamp_i32((i32(-1i) * -1i) >> (_wgslsmith_mult_u32(global4.x, u_input.d.x) % 32u), min(u_input.a, -1i), global3.x), (global3.x << (~u_input.d.x % 32u)) | ~global3.x, u_input.b, -(firstTrailingBit(20754i) ^ _wgslsmith_div_i32(global3.x, global3.x))), global4.x ^ 4294967295u);
}

