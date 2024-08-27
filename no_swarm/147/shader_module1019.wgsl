struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(60991u, 4294967295u, 74691u);

var<private> global1: array<i32, 21> = array<i32, 21>(-23926i, 19862i, -9373i, 2147483647i, -29538i, 0i, -856i, -5559i, -11971i, 2147483647i, -4276i, 10777i, -1i, -9259i, 1i, i32(-2147483648), 12140i, 38805i, 77981i, 1i, i32(-2147483648));

var<private> global2: array<Struct_2, 19>;

var<private> global3: vec2<i32> = vec2<i32>(-36334i, -67857i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = false;
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(412f * 1000f))), _wgslsmith_f_op_f32(ceil(2158f)))), _wgslsmith_f_op_f32(abs(1f)), 1f);
    let var_2 = firstTrailingBit(-(~vec4<i32>(-global3.x, -5837i, ~1i, countOneBits(global3.x))));
    var var_3 = select(select(vec3<bool>(var_0, _wgslsmith_f_op_f32(-var_1.x) > var_1.x, any(vec2<bool>(true, var_0))), vec3<bool>(all(!vec3<bool>(true, var_0, var_0)), true, !any(vec4<bool>(var_0, false, false, true))), vec3<bool>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) == global0.x, !all(vec4<bool>(var_0, false, var_0, false)), select(var_0, true, var_0 & false))), !select(vec3<bool>(true, var_0, false), vec3<bool>(!var_0, false, select(true, var_0, var_0)), !select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, false), var_0)), any(vec4<bool>(false, select(var_0, true, var_0) == (var_0 | var_0), var_0, all(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, var_0))))));
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(firstLeadingBit(vec3<u32>(20704u, global0.x, u_input.a.x)) | ~vec3<u32>(global0.x, 4294967295u, 1u)), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(select(global0.x, 0u, true), u_input.a.x), firstTrailingBit(firstTrailingBit(u_input.a))), ~u_input.a.x)), 19u)];
    return abs(1u);
}

fn func_2() -> f32 {
    global0 = vec3<u32>(func_3(), global0.x, abs(~(~(~4294967295u))));
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 19u)];
    let var_1 = global2[_wgslsmith_index_u32(u_input.a.x & func_3(), 19u)];
    var var_2 = -34962i;
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.d.c.x, _wgslsmith_div_u32(abs(_wgslsmith_sub_u32(11728u, 1u)), _wgslsmith_dot_vec2_u32(var_1.c.c.xx, countOneBits(select(vec2<u32>(var_0.d.c.x, u_input.a.x), vec2<u32>(43166u, global0.x), true))))), 19u)];
    return -965f;
}

fn func_1(arg_0: vec3<u32>) -> vec3<i32> {
    var var_0 = ~(i32(-1i) * -21040i);
    let var_1 = ~global3.x;
    var var_2 = arg_0.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) - _wgslsmith_f_op_f32(func_2())), -191f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1177f + 980f)))))));
    global1 = array<i32, 21>();
    return vec3<i32>(~global3.x, -_wgslsmith_dot_vec4_i32(firstTrailingBit(firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(global0.x, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], var_1, global1[_wgslsmith_index_u32(67247u, 21u)]))), reverseBits(max(vec4<i32>(global3.x, -45832i, global3.x, 4984i), vec4<i32>(-9707i, global1[_wgslsmith_index_u32(global0.x, 21u)], global3.x, global1[_wgslsmith_index_u32(0u, 21u)])))), -(max(abs(9981i), 0i) >> (_wgslsmith_mult_u32(u_input.a.x, ~17539u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(53586u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], global3.x), vec3<i32>(14839i, 0i, -2147483647i)), func_1(vec3<u32>(4294967295u, global0.x, 58683u)), true), vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a), 21u)], ~global3.x, 0i)), abs(abs(34875i)), 24093i), ~12666i, _wgslsmith_sub_vec3_u32(reverseBits(~(~vec3<u32>(2372u, 48686u, 58736u))), firstTrailingBit(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(21957u, u_input.a.x, 4294967295u), 10964u))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1221f, -1000f))), _wgslsmith_f_op_f32(floor(-544f)))), global0.x | 23565u, var_0, Struct_1(vec3<i32>(firstLeadingBit(45594i), -1i, global3.x), _wgslsmith_add_i32(var_0.b, ~_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(global0.x, 21u)], global1[_wgslsmith_index_u32(16877u, 21u)], var_0.b)), firstTrailingBit(firstTrailingBit(~var_0.c))));
    var var_2 = firstTrailingBit(_wgslsmith_div_vec3_u32(~(~select(var_0.c, var_1.c.c, vec3<bool>(true, true, true))), _wgslsmith_mod_vec3_u32(~max(var_0.c, var_0.c), var_0.c)));
    var var_3 = var_2.yy;
    let var_4 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(32195i, -global1[_wgslsmith_index_u32(var_4.c.x, 21u)]), -52286i), var_1.c.b);
}

