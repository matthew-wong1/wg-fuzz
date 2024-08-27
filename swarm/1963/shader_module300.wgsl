struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -59991i, -26768i);

var<private> global1: vec4<u32>;

var<private> global2: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    global1 = _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(1u, 4294967295u, global2.d, u_input.b))), vec4<u32>(u_input.b, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(~global1.yyx, _wgslsmith_div_vec3_u32(global1.xyx, global1.yyw))), 1u, global1.x));
    global1 = reverseBits(~abs(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) | vec4<u32>(1u, 4294967295u, u_input.b, 0u))) | reverseBits(~vec4<u32>(global2.d, 18762u, 51113u, ~4294967295u));
    global0 = vec3<i32>(_wgslsmith_dot_vec2_i32(abs(~vec2<i32>(u_input.a.x, 17130i) & firstLeadingBit(vec2<i32>(0i, -18808i))), global0.yx & vec2<i32>(global0.x, _wgslsmith_add_i32(2147483647i, global0.x))), -u_input.a.x, -29871i);
    var var_1 = !all(!vec2<bool>(global2.b.x, global2.b.x | global2.c.x));
    return vec4<u32>(~(~1u), ~1u, global2.d, abs(~max(17659u ^ u_input.b, ~0u)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> vec3<i32> {
    global1 = vec4<u32>(~_wgslsmith_add_u32(countOneBits(~1u), global2.d), (_wgslsmith_dot_vec3_u32(firstLeadingBit(global1.xwx), firstLeadingBit(global1.wwz)) ^ global2.d) & global1.x, ~(~global2.d), _wgslsmith_mod_u32(68915u, ~global1.x));
    var var_0 = global2.a;
    global1 = abs(select(abs(vec4<u32>(46810u, 47964u, global2.d, global1.x)) | ~vec4<u32>(global1.x, u_input.b, global2.d, global2.d), vec4<u32>(~global2.d, u_input.b, global2.d, ~4294967295u), !vec4<bool>(false, false, global2.c.x, true)) >> ((min(select(vec4<u32>(global2.d, 50503u, 15557u, 95861u), vec4<u32>(40869u, global1.x, 11746u, global1.x), true), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, global2.d, global1.x, 54261u), vec4<u32>(1u, 55337u, 4294967295u, 92149u))) >> (~vec4<u32>(global2.d, 39501u, 1u, 28076u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -558f);
    return firstLeadingBit(-u_input.a);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec2<bool>, arg_3: vec2<i32>) -> vec3<u32> {
    let var_0 = -2147483647i;
    var var_1 = Struct_3(global2.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, arg_3.x, global0.x), vec3<i32>(_wgslsmith_add_i32(abs(0i), 0i), i32(-1i) * -var_0, _wgslsmith_sub_i32(-49854i ^ arg_3.x, arg_0.b.x)), u_input.a), ~vec4<u32>(u_input.b, _wgslsmith_mult_u32(reverseBits(global1.x), global2.d), ~_wgslsmith_dot_vec4_u32(arg_0.c, vec4<u32>(global2.d, arg_0.c.x, arg_0.c.x, 25856u)), 0u ^ (u_input.b << (0u % 32u))));
    global1 = firstTrailingBit(select(arg_0.c, func_2(), arg_1));
    var_1 = Struct_3(!vec4<bool>(any(vec2<bool>(arg_1, var_1.a.x)), _wgslsmith_f_op_f32(round(-872f)) <= _wgslsmith_f_op_f32(1225f * -527f), arg_0.a.x, arg_1), ~func_3(false, vec2<f32>(_wgslsmith_f_op_f32(556f * 410f), _wgslsmith_f_op_f32(230f - 735f))), ~vec4<u32>(~1u, var_1.c.x, _wgslsmith_clamp_u32(arg_0.c.x, 92617u, ~global1.x), 0u));
    var var_2 = true;
    return abs(~(~firstTrailingBit(global1.yyw)) ^ ~(~var_1.c.wyw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_u32(~select(vec3<u32>(global1.x, global1.x, 0u), func_1(Struct_3(vec4<bool>(global2.b.x, global2.b.x, false, global2.c.x), vec3<i32>(u_input.a.x, -2147483647i, 15810i), vec4<u32>(30u, 1u, 0u, 1u)), global2.b.x, global2.c.xw, u_input.a.yy), select(vec3<bool>(global2.a.a, false, global2.b.x), vec3<bool>(true, global2.a.a, false), vec3<bool>(true, false, true))), abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.x, global1.x, 18892u), vec3<u32>(23899u, 11596u, global2.d) << (global1.wyz % vec3<u32>(32u))))) ^ global1.zwy;
    var_0 = ~global1.xyy ^ reverseBits(~(~vec3<u32>(global2.d, var_0.x, 9478u)));
    let var_1 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(u_input.a.x, global0.x), -vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(-9194i, u_input.a.x)), global2.b.yx), 0i, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-963f, -713f, -258f, _wgslsmith_f_op_f32(f32(-1f) * -786f)))), select(_wgslsmith_mod_vec4_i32(~vec4<i32>(28121i, u_input.a.x, 44506i, 2147483647i) | vec4<i32>(0i, -1i, -1i, -2147483647i), abs(vec4<i32>(-16024i, 1i, 0i, 259i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1216u, 4112u, 1u, u_input.b), vec4<u32>(38328u, 24010u, u_input.b, 4294967295u)) % vec4<u32>(32u))), vec4<i32>(1i, 2147483647i, max(i32(-1i) * -23336i, -17427i), _wgslsmith_div_i32(-14211i, -11953i)), global2.c));
}

