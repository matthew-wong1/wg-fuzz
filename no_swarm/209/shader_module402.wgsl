struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: vec2<f32> = vec2<f32>(1587f, 679f);

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<u32>, 29>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: f32) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 31u)];
    global1 = vec2<f32>(1198f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x + _wgslsmith_f_op_f32(ceil(123f)))))));
    global3 = array<vec4<u32>, 29>();
    global2 = var_0.b.yy;
    global0 = array<Struct_4, 31>();
    return _wgslsmith_add_i32(abs(-482i), _wgslsmith_div_i32(var_0.a.b.x, i32(-1i) * -arg_0.a.b.x));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<f32>) -> Struct_3 {
    global2 = reverseBits(vec2<i32>(func_3(Struct_3(Struct_2(vec4<bool>(false, true, false, false), vec3<i32>(global2.x, global2.x, global2.x), vec4<f32>(-1048f, arg_2.x, arg_0, arg_2.x), vec4<u32>(u_input.b.x, arg_1, 4294967295u, u_input.b.x), Struct_1(vec4<f32>(arg_0, global1.x, arg_0, -1000f)))), (u_input.b.yz >> (vec2<u32>(arg_1, 4294967295u) % vec2<u32>(32u))) ^ u_input.b.yw, Struct_2(vec4<bool>(true, true, true, true), vec3<i32>(global2.x, -15690i, 0i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 428f))), u_input.b | vec4<u32>(u_input.a, u_input.a, u_input.b.x, arg_1), Struct_1(vec4<f32>(arg_0, 1000f, arg_0, 316f))), -751f), ~global2.x));
    global3 = array<vec4<u32>, 29>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_div_f32(-833f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -475f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, global1.x)) - -242f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1352f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-270f, global1.x, arg_2.x, -1132f) - vec4<f32>(1549f, arg_0, -1063f, 1000f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(384f, global1.x, global1.x, -303f)), vec4<bool>(true, true, true, true)))));
    let var_2 = 1u;
    return Struct_3(Struct_2(vec4<bool>(!all(vec3<bool>(true, false, true)), select(any(vec3<bool>(true, true, true)), all(vec4<bool>(false, false, true, true)), true), select(true, false, true), all(vec2<bool>(true, true))), _wgslsmith_div_vec3_i32(~countOneBits(vec3<i32>(-7750i, global2.x, global2.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(global2.x, 60423i, global2.x), vec3<i32>(-2147483647i, 15539i, -58796i)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(global2.x, global2.x, 1i), vec3<i32>(24356i, global2.x, -68155i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1174f, 1000f))), -653f, -564f, -824f), select(reverseBits(u_input.b & vec4<u32>(u_input.a, var_2, arg_1, 5630u)), abs(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_1.a))))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_4 {
    var var_0 = ~u_input.b.zzz;
    let var_1 = func_2(global1.x, _wgslsmith_div_u32(~arg_2.x, ~_wgslsmith_div_u32(var_0.x >> (42064u % 32u), 1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1030f, 639f, _wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 827f, global1.x) * vec3<f32>(351f, -527f, -691f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 2419f, 1640f) + vec3<f32>(global1.x, global1.x, 562f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1330f, global1.x, global1.x) - vec3<f32>(251f, 1426f, global1.x))), any(vec2<bool>(true, true))))));
    let var_2 = var_1;
    let var_3 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.a.d.yx, arg_2), ~(~vec2<u32>(var_2.a.d.x, 0u) | (_wgslsmith_mult_vec2_u32(u_input.b.wx, vec2<u32>(4294967295u, var_1.a.d.x)) & arg_2)), _wgslsmith_div_vec2_u32(~(~(var_2.a.d.wy >> (var_1.a.d.xx % vec2<u32>(32u)))), abs(vec2<u32>(countOneBits(var_0.x), 1u))));
    var var_4 = func_3(func_2(_wgslsmith_f_op_f32(floor(var_2.a.c.x)), firstLeadingBit(func_2(-1000f, 1u, var_2.a.e.a.wwx).a.d.x) ^ ~func_2(-442f, 18316u, var_2.a.e.a.wxx).a.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-267f, 1936f, var_2.a.c.x), vec3<f32>(global1.x, -398f, var_1.a.e.a.x), true))))), func_2(global1.x, ~31148u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.c.x, _wgslsmith_f_op_f32(-var_1.a.e.a.x), _wgslsmith_f_op_f32(-var_1.a.e.a.x)))).a.d.yy, Struct_2(var_2.a.a, -var_1.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.a.e.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(-862f, global1.x, var_2.a.c.x, -1000f) - vec4<f32>(-884f, -1000f, -2177f, var_1.a.c.x)))), ~(_wgslsmith_mod_vec4_u32(var_2.a.d, global3[_wgslsmith_index_u32(8252u, 29u)]) & u_input.b), var_2.a.e), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(356f, global1.x)) * -984f), -385f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1030f)))));
    return Struct_4(Struct_2(var_1.a.a, -vec3<i32>(-1i, -65954i, -1i >> (var_1.a.d.x % 32u)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(func_2(1970f, var_1.a.d.x, var_1.a.c.zzy).a.c.x, _wgslsmith_f_op_f32(round(var_2.a.e.a.x)), -251f, _wgslsmith_f_op_f32(-var_2.a.e.a.x)))), firstTrailingBit(abs(~u_input.b)), var_2.a.e), select(select(var_1.a.b, vec3<i32>(-1i) * -vec3<i32>(0i, var_1.a.b.x, global2.x), 1u == (var_0.x << (0u % 32u))), -(~vec3<i32>(-20016i, 2147483647i, 1i)) >> (var_2.a.d.zwz % vec3<u32>(32u)), vec3<bool>(arg_1, all(!var_1.a.a.yx), all(!vec2<bool>(false, arg_1)))));
}

fn func_4(arg_0: Struct_4) -> f32 {
    global3 = array<vec4<u32>, 29>();
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(787f - 1382f))))), u_input.b.x, arg_0.a.e.a.xxz).a;
    let var_1 = var_0.d.x;
    let var_2 = vec4<bool>(false, all(var_0.a.xz), !(false | var_0.a.x), any(vec4<bool>(var_0.a.x, firstLeadingBit(2147483647i) > firstLeadingBit(arg_0.b.x), true, var_0.a.x & !var_0.a.x)));
    global3 = array<vec4<u32>, 29>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-672f - _wgslsmith_f_op_f32(ceil(global1.x))) - arg_0.a.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(-(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.x, -28779i), vec2<i32>(global2.x, global2.x), vec2<i32>(-2147483647i, -1i)))), vec2<i32>(select(2147483647i, 2147483647i, true) << (u_input.a % 32u), 2147483647i), true);
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(128f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-770f))) - 568f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, -866f)) * _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(floor(-380f)), 1000f);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(global2.x, true, ~vec2<u32>(u_input.b.x, u_input.a), ~vec3<i32>(global2.x, global2.x, -15733i)))) - var_0.x), 1770f);
    var var_1 = func_2(_wgslsmith_f_op_f32(func_4(func_1(-(~(-2147483647i)), true, u_input.b.yx, ~vec3<i32>(global2.x, 0i, 17457i)))), u_input.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-894f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, -1867f)))), _wgslsmith_f_op_vec3_f32(-var_0.zyy), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

