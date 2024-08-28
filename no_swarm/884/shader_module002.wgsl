struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(26908u, 0u), vec2<u32>(4294967295u, 3468u), vec2<u32>(58994u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(24631u, 19406u), vec2<u32>(28201u, 0u), vec2<u32>(1u, 35551u));

var<private> global2: array<bool, 22> = array<bool, 22>(true, false, false, false, true, false, false, true, false, true, true, false, false, true, true, true, true, false, true, false, false, true);

var<private> global3: bool = false;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> Struct_4 {
    var var_0 = global0.yx;
    let var_1 = _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, _wgslsmith_sub_u32(u_input.c, ~u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(39836u, u_input.c)) | u_input.c, _wgslsmith_clamp_u32(~u_input.c, countOneBits(u_input.c), 50229u)), firstTrailingBit(abs(min(abs(vec4<u32>(u_input.c, 0u, 79570u, u_input.c)), reverseBits(vec4<u32>(u_input.c, 4294967295u, 1u, 1u))))));
    return Struct_4(var_1.x, _wgslsmith_add_vec4_u32(~vec4<u32>(reverseBits(u_input.c), 38073u, ~0u, select(3817u, var_1.x, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, var_1.x), ~30170u, 53248u, 1u), var_1)), _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(u_input.b, 2147483647i, 0i), ~_wgslsmith_add_i32(-34037i, u_input.b))), _wgslsmith_sub_vec3_i32(max(vec3<i32>(abs(1i), -25598i, -46901i), (vec3<i32>(2147483647i, u_input.b, u_input.b) ^ vec3<i32>(u_input.b, 2147483647i, u_input.a)) ^ vec3<i32>(u_input.b, u_input.b, -82144i)), ~(_wgslsmith_div_vec3_i32(vec3<i32>(-34561i, 1i, u_input.b), vec3<i32>(u_input.b, u_input.a, u_input.a)) << (vec3<u32>(u_input.c, 8249u, u_input.c) % vec3<u32>(32u)))), Struct_2(1766f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~((~firstTrailingBit(vec3<u32>(0u, 78754u, 51007u)) << (~(~vec3<u32>(u_input.c, u_input.c, 63938u)) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(31494u, u_input.c, u_input.c) & vec3<u32>(u_input.c, 45724u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(45218u, 1u, u_input.c), vec3<u32>(u_input.c, 4294967295u, 1u))), ~(~vec3<u32>(u_input.c, 38563u, 1u))) % vec3<u32>(32u)));
    var var_1 = func_1();
    var var_2 = !(!(!(!select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], true, global2[_wgslsmith_index_u32(var_0.x, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(38920u, 22u)], global2[_wgslsmith_index_u32(22855u, 22u)], true), true))));
    var var_3 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, u_input.a >> ((u_input.c | var_0.x) % 32u), 2147483647i) << (abs(func_1().b.yzw) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0.yww)) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 244f), 1362f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.e.a)), _wgslsmith_f_op_f32(var_3.a + 765f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2262f, var_1.e.a)) + _wgslsmith_f_op_f32(select(global0.x, global0.x, false))), -499f)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_1.e.a))));
}

