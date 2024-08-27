struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 2147483647i, 2147483647i, 8383i);

var<private> global1: vec4<u32> = vec4<u32>(32478u, 1u, 77929u, 1u);

var<private> global2: array<Struct_1, 21>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> vec2<bool> {
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_sub_u32(1u, ~global1.x);
    global0 = vec4<i32>(-u_input.b, 2147483647i >> (((~global1.x | (u_input.a.x | 44728u)) | global1.x) % 32u), abs(global0.x) ^ abs((0i << (0u % 32u)) << (min(u_input.a.x, 27884u) % 32u)), _wgslsmith_dot_vec4_i32(~max(~vec4<i32>(-1i, global0.x, -2147483647i, 42755i), vec4<i32>(2147483647i, 2147483647i, 0i, -1i)), ~vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(96203i, -23167i, global0.x), u_input.b, _wgslsmith_clamp_i32(u_input.b, -20884i, 20977i))));
    global0 = -(~vec4<i32>(_wgslsmith_add_i32(-16673i, -10399i) << (_wgslsmith_add_u32(global1.x, global1.x) % 32u), 35538i, global0.x, i32(-1i) * -14483i));
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 21u)];
    return var_1.b.zw;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec2<i32>) -> bool {
    global2 = array<Struct_1, 21>();
    global1 = _wgslsmith_mult_vec4_u32(vec4<u32>(0u, firstTrailingBit(arg_0.x) | (arg_1.x ^ arg_0.x), firstLeadingBit(0u & global1.x), 8049u), vec4<u32>(~_wgslsmith_div_u32(61059u, 15731u), abs(~0u), ~0u, max(~0u, _wgslsmith_mult_u32(u_input.a.x, 68073u)))) | (~_wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.c, 12989u, 36594u, arg_1.x), vec4<u32>(1u, 4294967295u, 50558u, 35738u)), ~vec4<u32>(56430u, 1u, arg_0.x, global1.x)) & ~(~(~vec4<u32>(1u, 1u, 44142u, 17037u))));
    global2 = array<Struct_1, 21>();
    let var_0 = Struct_1(arg_2, vec4<bool>(any(!func_3(vec4<f32>(1831f, 748f, -633f, 262f))), true, true, true), ~(-global0.x >> ((~14902u ^ reverseBits(arg_1.x)) % 32u)));
    global2 = array<Struct_1, 21>();
    return any(!var_0.b.zx);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(u_input.d, !select(arg_0.b, arg_0.b, false), -2147483647i);
    let var_1 = Struct_1(vec2<i32>(max(arg_0.a.x, -29081i), u_input.b), vec4<bool>(!arg_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1156f)))) != _wgslsmith_div_f32(-142f, -1268f), any(select(!vec2<bool>(false, var_0.b.x), !vec2<bool>(arg_0.b.x, var_0.b.x), select(vec2<bool>(true, arg_0.b.x), vec2<bool>(false, var_0.b.x), var_0.b.x))), func_2(abs(vec3<u32>(24970u, 4294967295u, 0u)), _wgslsmith_clamp_vec3_u32(~global1.wyz, _wgslsmith_mod_vec3_u32(arg_2, arg_2), arg_2), ~firstLeadingBit(vec2<i32>(-5136i, u_input.d.x)))), 1i | global0.x);
    var var_2 = Struct_1(vec2<i32>(select(-28916i, 3916i, -1i != u_input.b), var_0.c) ^ ~u_input.d, select(!(!vec4<bool>(true, var_1.b.x, var_0.b.x, false)), vec4<bool>(!(!arg_0.b.x), arg_0.b.x, true, !(!arg_0.b.x)), arg_0.b), -10225i);
    global0 = countOneBits(abs(vec4<i32>(~_wgslsmith_mod_i32(u_input.d.x, var_2.a.x), var_2.c, var_0.a.x, abs(-u_input.b))));
    let var_3 = !(!(74785u == (0u >> (u_input.a.x % 32u))) || arg_0.b.x);
    return Struct_1(vec2<i32>(~var_2.c, 0i), select(vec4<bool>(!any(var_2.b.wyy), true && any(arg_0.b.wxx), !(false && arg_0.b.x), false), vec4<bool>(select(true, var_1.b.x, any(arg_0.b.ywz)), true, true, var_0.b.x), any(!select(vec3<bool>(false, false, true), var_0.b.zzz, vec3<bool>(false, false, var_2.b.x)))), var_2.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    global0 = (vec4<i32>(reverseBits(arg_0.a.x | 37729i), -12814i, u_input.d.x, abs(arg_0.a.x) | -arg_0.a.x) & (vec4<i32>(max(u_input.b, -2147483647i), countOneBits(arg_0.a.x), 0i, global0.x ^ 703i) ^ ~(vec4<i32>(56025i, global0.x, global0.x, -1i) & vec4<i32>(u_input.b, arg_0.c, arg_0.a.x, u_input.d.x)))) << (~_wgslsmith_mult_vec4_u32(~(vec4<u32>(global1.x, global1.x, 1388u, global1.x) | vec4<u32>(u_input.a.x, 1u, u_input.c, u_input.c)), vec4<u32>(_wgslsmith_div_u32(global1.x, 17028u), _wgslsmith_clamp_u32(42785u, global1.x, global1.x), ~44351u, global1.x)) % vec4<u32>(32u));
    var var_0 = func_1(arg_0, ~_wgslsmith_mod_u32(~u_input.c, ~1u), min(min(vec3<u32>(global1.x, global1.x, 0u), vec3<u32>(global1.x, global1.x, 4294967295u)), select(~vec3<u32>(global1.x, 1u, 1u), max(vec3<u32>(global1.x, global1.x, u_input.a.x), global1.wwx), !arg_0.b.x)) | global1.wwy);
    let var_1 = func_1(func_1(Struct_1(u_input.d, arg_0.b, 2147483647i), ~global1.x, select(global1.wzz, _wgslsmith_sub_vec3_u32(select(global1.xww, global1.zxw, true), ~vec3<u32>(global1.x, 17910u, 0u)), select(!arg_0.b.zwy, select(arg_0.b.wyz, var_0.b.xxy, vec3<bool>(arg_0.b.x, var_0.b.x, arg_0.b.x)), vec3<bool>(false, var_0.b.x, true)))), max(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.c, 52465u, 54316u), vec4<u32>(53955u, u_input.a.x, 45551u, 11728u))), firstLeadingBit(u_input.a.x)), countOneBits((~vec3<u32>(1u, 35242u, 4294967295u) >> (vec3<u32>(u_input.a.x, 103089u, global1.x) % vec3<u32>(32u))) << (vec3<u32>(0u, 4294967295u ^ u_input.c, 0u) % vec3<u32>(32u))));
    var var_2 = any(select(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 717f) + vec4<f32>(-259f, arg_1.x, 1475f, 416f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1006f, arg_1.x, 450f, -1000f)))), vec2<bool>(!(!var_0.b.x), false), !select(vec2<bool>(false, var_1.b.x), arg_0.b.wy, !vec2<bool>(true, arg_0.b.x))));
    let var_3 = _wgslsmith_sub_u32(~u_input.c, min(u_input.a.x, reverseBits(global1.x)) ^ u_input.a.x);
    return arg_0.a.x | (global0.x << (0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 21>();
    var var_0 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true));
    var var_1 = Struct_1(vec2<i32>(func_4(func_1(Struct_1(vec2<i32>(u_input.b, global0.x), vec4<bool>(false, false, false, true), global0.x), global1.x >> (24525u % 32u), ~global1.zxz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1261f, 635f))), global0.x), vec4<bool>(false, !(select(true, false, true) | all(vec2<bool>(true, false))), func_1(Struct_1(u_input.d, func_1(global2[_wgslsmith_index_u32(1u, 21u)], global1.x, global1.wyx).b, _wgslsmith_sub_i32(-2301i, -38290i)), 1u, vec3<u32>(global1.x, u_input.a.x, 19909u)).b.x, _wgslsmith_f_op_f32(f32(-1f) * -672f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-375f, -1060f, true)))), 0i);
    var var_2 = true;
    var_1 = func_1(Struct_1(vec2<i32>(u_input.d.x, var_1.c), !(!select(vec4<bool>(var_1.b.x, var_1.b.x, false, false), vec4<bool>(true, var_1.b.x, false, true), vec4<bool>(true, true, var_1.b.x, var_1.b.x))), _wgslsmith_div_i32(~2147483647i, u_input.d.x) >> (0u % 32u)), _wgslsmith_mult_u32(countOneBits(0u), ~firstTrailingBit(77954u)), abs(max(global1.zxy, global1.xxx)));
    var var_3 = func_1(global2[_wgslsmith_index_u32(global1.x, 21u)], firstLeadingBit(_wgslsmith_clamp_u32(~abs(28565u), 4294967295u, _wgslsmith_div_u32(0u, global1.x) << (~4424u % 32u))), firstTrailingBit(global1.ywy ^ firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, u_input.a.x, 22646u), vec3<u32>(41221u, u_input.c, u_input.a.x)))));
    let var_4 = vec4<u32>(global1.x, _wgslsmith_div_u32(global1.x, u_input.c), ~_wgslsmith_dot_vec2_u32(u_input.a, select(~vec2<u32>(31562u, 77564u), select(u_input.a, u_input.a, var_3.b.wy), var_3.b.yy)), ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-func_1(Struct_1(vec2<i32>(var_1.c, -2147483647i), vec4<bool>(false, true, var_3.b.x, var_3.b.x), var_3.c), u_input.c, global1.wxw).a.x)), 1878f, 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2312f - -1232f), -1286f, 1f, 1196f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-508f, 1655f, 1000f, -1232f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(682f, 193f, -434f, 1607f), vec4<f32>(-2285f, -179f, -1272f, -722f)))))));
}

