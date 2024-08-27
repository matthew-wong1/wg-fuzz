struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: array<f32, 16>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(27624i, 1i, -65370i));

var<private> global2: array<i32, 24> = array<i32, 24>(-1i, -10419i, -215i, -31425i, 23006i, 28164i, -10288i, 2147483647i, -1i, 2147483647i, 1i, 1i, 2147483647i, 11792i, -19084i, -11335i, 58060i, i32(-2147483648), 2147483647i, 0i, -70609i, -1i, 2147483647i, 25951i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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
    global2 = array<i32, 24>();
    let var_0 = Struct_1(_wgslsmith_mult_vec3_i32(abs(~(~global1.a)), global1.a >> (vec3<u32>(~u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u))));
    let var_1 = true;
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1194i, global1.a.x, -2147483647i) >> (1u % 32u), global1.a.x) & -9223i, u_input.d);
    var var_3 = -2111f;
    let var_4 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}

