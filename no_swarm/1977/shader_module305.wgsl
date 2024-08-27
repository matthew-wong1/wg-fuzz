struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(-_wgslsmith_mult_vec2_i32(vec2<i32>(6054i, 15825i), vec2<i32>(0i, 0i))), -vec2<i32>(1i, 1i), u_input.a <= ~min(114797u, 10988u)) ^ _wgslsmith_clamp_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(45020i, -13995i)) ^ _wgslsmith_clamp_vec2_i32(min(vec2<i32>(1i, -29113i), vec2<i32>(-2147483647i, -1i)), -vec2<i32>(60728i, -1i), vec2<i32>(0i, -2147483647i)), vec2<i32>(1i, 1i), vec2<i32>(1i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-var_0.x | var_0.x, -(~_wgslsmith_mult_i32(-24457i, 0i))));
}

