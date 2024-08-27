struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(0i, -1i, 1i, -29091i, i32(-2147483648), 1i, 28377i, -21789i, 45348i, 2147483647i, 4718i, -34291i, 1i, i32(-2147483648), 64856i, i32(-2147483648), 62923i, 21618i, i32(-2147483648), 2459i, 21247i, 1i, 7636i, 0i, -1i, -19424i, 1i, -6848i, 2147483647i);

var<private> global1: Struct_1;

var<private> global2: vec4<i32>;

var<private> global3: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(4294967295u, 0u), vec2<u32>(42414u, 16445u), vec2<u32>(82104u, 25368u), vec2<u32>(989u, 98650u), vec2<u32>(3184u, 1u), vec2<u32>(1u, 7624u), vec2<u32>(106035u, 1u), vec2<u32>(65427u, 0u), vec2<u32>(1u, 36783u), vec2<u32>(40800u, 108806u), vec2<u32>(73084u, 32563u), vec2<u32>(0u, 16456u), vec2<u32>(32654u, 17132u), vec2<u32>(6249u, 13862u), vec2<u32>(76u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(17646u, 54985u), vec2<u32>(42345u, 4294967295u), vec2<u32>(57u, 58082u), vec2<u32>(4294967295u, 0u), vec2<u32>(15197u, 4294967295u), vec2<u32>(0u, 22043u), vec2<u32>(0u, 0u));

var<private> global4: array<vec2<f32>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    let var_0 = -28540i;
    global3 = array<vec2<u32>, 23>();
    var var_1 = Struct_1(global1.a, ~var_0, _wgslsmith_f_op_f32(f32(-1f) * -522f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, ~11049u), 1u), 39058u));
}

