struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(-955f, 874f, 579f, 2062f), 61550u);

var<private> global1: f32;

var<private> global2: vec3<u32> = vec3<u32>(0u, 23872u, 4294967295u);

var<private> global3: vec4<i32>;

var<private> global4: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.a.x))), _wgslsmith_div_f32(global4.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(199f - global4.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1245f)))))));
    return _wgslsmith_sub_vec4_i32(abs(~select(max(vec4<i32>(-8146i, global3.x, -9187i, -2147483647i), vec4<i32>(2147483647i, -12417i, global3.x, 2147483647i)), vec4<i32>(global3.x, -2147483647i, global3.x, 3698i), true)), vec4<i32>(-1i, _wgslsmith_div_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, global3.x), global3.x), _wgslsmith_div_i32(~_wgslsmith_div_i32(global3.x, 39623i), -27228i), _wgslsmith_div_i32(global3.x, abs(-global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -29288i;
    global3 = reverseBits(reverseBits(func_1()));
    let var_1 = vec2<bool>(all(select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(true, true, false, false)), select(true, true, false)))), any(vec3<bool>(true, true, true)));
    var var_2 = global4.a;
    let var_3 = _wgslsmith_f_op_f32(-1f);
    let x = u_input.a;
    s_output = StorageBuffer(-59324i, ~(~(~global0.b)));
}

