struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: array<i32, 10>;

var<private> global2: Struct_1 = Struct_1(16356u, true, vec4<i32>(i32(-2147483648), 4687i, i32(-2147483648), 1i), vec4<u32>(4294967295u, 4294967295u, 8079u, 53507u), 6415i);

var<private> global3: array<Struct_1, 14>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~(~74036u), 14u)];
    global1 = array<i32, 10>();
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1666f))));
    var_0 = global3[_wgslsmith_index_u32(27623u, 14u)];
    var var_2 = 1i;
    var var_3 = _wgslsmith_mult_i32(-63881i, ~_wgslsmith_sub_i32(0i, countOneBits(~1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(select(global2.c.yyy, vec3<i32>(u_input.c, 22234i, -2147483647i), global2.b), u_input.d), vec3<i32>(_wgslsmith_clamp_i32(u_input.d.x, -1703i, -30066i), -global0[_wgslsmith_index_u32(77083u, 17u)], i32(-1i) * -4566i)));
}

