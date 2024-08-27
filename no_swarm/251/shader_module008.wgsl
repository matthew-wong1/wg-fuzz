struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-210f, 111f, 908f);

var<private> global1: array<Struct_4, 25>;

var<private> global2: vec4<i32> = vec4<i32>(-1i, i32(-2147483648), 2147483647i, -1i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<u32>) -> i32 {
    global0 = arg_2;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -733f))), _wgslsmith_f_op_f32(-arg_1.b.x), false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(max(-112f, 201f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(605f, arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b.x - -265f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x))))));
    let var_1 = global1[_wgslsmith_index_u32(arg_0.b.a.x, 25u)];
    var var_2 = global1[_wgslsmith_index_u32(~5546u, 25u)];
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-arg_0.b.b.x), var_1.b.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.b.x) * 890f))));
    return firstTrailingBit(global2.x & global2.x);
}

fn func_2(arg_0: Struct_5, arg_1: vec4<bool>) -> u32 {
    var var_0 = Struct_2(-(~vec2<i32>(global2.x, ~2147483647i)), vec4<i32>(-67798i, -countOneBits(func_3(Struct_5(vec2<u32>(arg_0.b.a.x, arg_0.a.x), Struct_1(vec3<u32>(4294967295u, 35122u, 8357u), vec2<f32>(242f, arg_0.b.b.x))), arg_0.b, vec3<f32>(arg_0.b.b.x, global0.x, global0.x), vec4<u32>(arg_0.b.a.x, 1u, arg_0.b.a.x, 69154u))), firstTrailingBit(i32(-1i) * -4832i), -_wgslsmith_add_i32(-2448i, u_input.a.x)), arg_0.b.a << (max(vec3<u32>(~0u, ~u_input.b.x, u_input.b.x | arg_0.a.x), ~arg_0.b.a & arg_0.b.a) % vec3<u32>(32u)), arg_0.b);
    let var_1 = reverseBits(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, var_0.d.a.x), ~u_input.b.x, var_0.d.a.x), vec3<u32>(13742u, 1904u, arg_0.b.a.x) >> ((arg_0.b.a & vec3<u32>(arg_0.a.x, arg_0.b.a.x, arg_0.a.x)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(49802u, 43882u, 1u, var_0.c.x), vec4<u32>(arg_0.b.a.x, u_input.b.x, u_input.b.x, 49086u)), select(arg_0.a.x, 1u, arg_1.x), u_input.b.x >> (23948u % 32u))), vec3<u32>(var_0.d.a.x, _wgslsmith_div_u32(~u_input.b.x, ~0u), arg_0.b.a.x | arg_0.b.a.x)));
    var var_2 = arg_0.b;
    var var_3 = Struct_4(_wgslsmith_sub_u32(var_2.a.x, ~u_input.b.x), arg_1.zzx);
    var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.a.x, 56743u), ~select(var_1.xz, vec2<u32>(var_2.a.x, var_0.c.x), arg_1.x) | ~countOneBits(vec2<u32>(7343u, u_input.b.x))) >> (~firstTrailingBit(1u) % 32u), 25u)];
    return arg_0.b.a.x;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> vec2<i32> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 25u)];
    var var_1 = 17769u;
    let var_2 = vec3<u32>(reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(u_input.b.x, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 1u), ~vec2<u32>(33495u, 4294967295u)))), ~(u_input.b.x ^ func_2(Struct_5(vec2<u32>(arg_1.x, 25401u), Struct_1(vec3<u32>(var_0.a, 42021u, u_input.b.x), global0.yx)), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true))), 65463u);
    let var_3 = (vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x ^ u_input.a.x, _wgslsmith_mult_i32(global2.x, global2.x), 21555i), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, global2.x), vec3<i32>(u_input.a.x, -1i, u_input.a.x))), global2.x >> (~var_2.x % 32u), func_3(Struct_5(arg_1, Struct_1(var_2, global0.zx)), Struct_1(var_2, vec2<f32>(arg_0, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_0, arg_0) - vec3<f32>(1437f, -624f, 188f)), vec4<u32>(arg_1.x, var_0.a, 7377u, 1u))) & vec4<i32>(global2.x, 1i, -select(u_input.a.x, 44496i, true), -u_input.a.x)) & (vec4<i32>(-18164i, u_input.a.x >> (~var_2.x % 32u), ~(-1i) >> (_wgslsmith_div_u32(var_0.a, u_input.b.x) % 32u), 52661i) >> ((~(~vec4<u32>(arg_1.x, 37029u, 35603u, arg_1.x)) ^ _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(var_2.x, var_2.x, u_input.b.x, 3237u)), ~vec4<u32>(4694u, u_input.b.x, 0u, 1u))) % vec4<u32>(32u)));
    let var_4 = !select(select(select(!vec4<bool>(true, false, var_0.b.x, false), !vec4<bool>(true, false, var_0.b.x, false), false), select(select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(true, true, false, false), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), vec4<bool>(var_0.b.x, var_0.b.x, false, true), vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x)), !var_0.b.x), !select(!vec4<bool>(false, var_0.b.x, false, var_0.b.x), vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))) > _wgslsmith_f_op_f32(-861f * _wgslsmith_f_op_f32(arg_0 - 1215f)));
    return u_input.a.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(~(-countOneBits(-1i)), min(reverseBits(-1i), -global2.x) ^ ((global2.x ^ -2147483647i) ^ global2.x)) | ~vec2<i32>(1i, ~global2.x & min(global2.x, global2.x));
    let var_1 = _wgslsmith_dot_vec2_i32(func_1(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(max(-295f, -129f))), vec2<u32>(_wgslsmith_mult_u32(~53712u, 0u), ~1u)), vec2<i32>(14430i, -2147483647i));
    var var_2 = Struct_4(1u, vec3<bool>(false, false, !((0i & var_0.x) < 1i)));
    let var_3 = var_2.b.x;
    let var_4 = Struct_3(-1316f, Struct_2(-(~var_0), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -22688i, -2147483647i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(3549i, var_1, u_input.a.x, -49095i), vec4<i32>(global2.x, 2147483647i, u_input.a.x, var_0.x))), abs(max(var_0.x, 0i)), _wgslsmith_add_i32(min(global2.x, 4539i), ~0i)), firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(29526u, u_input.b.x, u_input.b.x), abs(vec3<u32>(47213u, 16407u, u_input.b.x)))), Struct_1(~vec3<u32>(var_2.a, u_input.b.x, var_2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xy + vec2<f32>(global0.x, global0.x))))), -abs(vec4<i32>(global2.x, var_0.x, -6772i, ~var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, -1803f, -734f, var_4.b.d.b.x)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-136f, global0.x, -386f, var_4.a) + vec4<f32>(global0.x, global0.x, var_4.a, -1830f))))))), _wgslsmith_sub_u32(17010u, var_4.b.d.a.x), 356f, 292f);
}

