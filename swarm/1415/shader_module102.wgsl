struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(true, false), vec3<f32>(1490f, 693f, 832f));

var<private> global1: i32 = 39346i;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<i32>(-21391i, -34810i), 33594i, vec3<u32>(12313u, 24424u, 0u)), Struct_1(vec2<i32>(-17730i, i32(-2147483648)), 0i, vec3<u32>(26696u, 0u, 16909u)), Struct_1(vec2<i32>(9911i, 38893i), 1i, vec3<u32>(57362u, 45736u, 4294967295u)), Struct_1(vec2<i32>(-25773i, 2147483647i), i32(-2147483648), vec3<u32>(0u, 0u, 29478u)), Struct_1(vec2<i32>(5862i, -24561i), 1i, vec3<u32>(46850u, 52562u, 1u)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), i32(-2147483648), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec2<i32>(0i, -13298i), 0i, vec3<u32>(3042u, 1u, 0u)), Struct_1(vec2<i32>(-35415i, 0i), i32(-2147483648), vec3<u32>(4294967295u, 24127u, 0u)), Struct_1(vec2<i32>(-23302i, -7250i), 8693i, vec3<u32>(618u, 4294967295u, 42295u)), Struct_1(vec2<i32>(2147483647i, 0i), 2147483647i, vec3<u32>(4294967295u, 25275u, 2140u)), Struct_1(vec2<i32>(11024i, 2147483647i), -21585i, vec3<u32>(0u, 0u, 10803u)));

var<private> global3: vec4<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: i32) -> i32 {
    let var_0 = Struct_3(select(select(vec2<bool>(global3.x && false, any(vec3<bool>(global3.x, false, false))), global0.a, select(select(global0.a, global0.a, global3.yy), !vec2<bool>(global3.x, true), select(global0.a, vec2<bool>(true, global3.x), global0.a))), global3.xz, global3.x), vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, -319f) + -1000f))), _wgslsmith_f_op_f32(round(global0.b.x))));
    global3 = vec4<bool>(min(_wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), _wgslsmith_add_i32(1i, 0i), -13878i), countOneBits(arg_2)) <= _wgslsmith_mod_i32(-arg_2, arg_2), true, any(vec2<bool>(false, select(var_0.a.x, true, true))), !global3.x);
    let var_1 = 1f;
    global3 = vec4<bool>(var_0.a.x | !global3.x, global3.x, !(var_0.a.x | global0.a.x), any(vec4<bool>(true, true, true, select(arg_2, 2147483647i, global0.a.x) != (arg_2 << (u_input.e.x % 32u)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.xy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, global0.b.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.xy))), Struct_1(vec2<i32>(_wgslsmith_div_i32(arg_2, arg_2), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -2147483647i, arg_2, 0i), vec4<i32>(9664i, 64021i, 0i, arg_2))) & abs(~vec2<i32>(-2147483647i, -1i)), -(~(i32(-1i) * -1i)), vec3<u32>(81930u, 34145u, ~arg_0)), global2[_wgslsmith_index_u32(u_input.a, 11u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + 616f));
    return arg_2;
}

fn func_2() -> Struct_3 {
    global1 = func_3(u_input.b, u_input.b, countOneBits(abs(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 5398i, -2147483647i), vec4<i32>(10922i, 1i, 2147483647i, -25502i))))));
    var var_0 = Struct_3(vec2<bool>(select(all(vec4<bool>(true, false, false, true)), (global0.a.x | global3.x) || global3.x, true), global0.b.x > -1000f), _wgslsmith_f_op_vec3_f32(round(global0.b)));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1120f), var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-148f)), _wgslsmith_f_op_f32(floor(-1463f))))))));
    var var_2 = 0i;
    let var_3 = vec3<u32>(max(u_input.d, u_input.d), 33271u, ~(min(u_input.b, 0u) | ~u_input.a)) & u_input.e;
    return Struct_3(!global3.zw, var_0.b);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_3) -> u32 {
    var var_0 = !(!select(select(select(global3.wyz, global3.xzx, arg_2.a.x), !vec3<bool>(arg_2.a.x, global0.a.x, false), !vec3<bool>(false, arg_0, arg_2.a.x)), !select(vec3<bool>(arg_2.a.x, true, global3.x), vec3<bool>(global3.x, false, arg_2.a.x), global3.zzy), all(global3.ywy) || arg_2.a.x));
    return arg_1;
}

fn func_5(arg_0: u32) -> Struct_2 {
    global2 = array<Struct_1, 11>();
    global1 = 1i;
    let var_0 = ~((~max(vec4<u32>(arg_0, u_input.a, u_input.a, 4294967295u), vec4<u32>(38591u, 25006u, 10998u, arg_0)) | ((vec4<u32>(1u, 4294967295u, 10338u, arg_0) | vec4<u32>(arg_0, 0u, 1u, 81495u)) >> (~vec4<u32>(0u, 1u, arg_0, arg_0) % vec4<u32>(32u)))) << (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, u_input.a, 3703u, 0u) << (vec4<u32>(u_input.b, u_input.c, arg_0, arg_0) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(4294967295u, arg_0, arg_0, arg_0)), vec4<u32>(~4294967295u, ~u_input.a, 4294967295u, 0u)) % vec4<u32>(32u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1106f, -2316f)), 381f) * global0.b.yy), global2[_wgslsmith_index_u32((~var_0.x & _wgslsmith_dot_vec3_u32(~var_0.zyy, _wgslsmith_mod_vec3_u32(vec3<u32>(22806u, 23943u, 48782u), var_0.www))) >> (_wgslsmith_clamp_u32(43597u, 7013u, ~var_0.x << (_wgslsmith_dot_vec4_u32(var_0, var_0) % 32u)) % 32u), 11u)], Struct_1(vec2<i32>(-1i) * -reverseBits(vec2<i32>(9443i, -25454i)), ~(~(-1103i)), reverseBits(_wgslsmith_mod_vec3_u32(var_0.yyy, ~vec3<u32>(0u, 13688u, u_input.c)))), 1034f);
    global1 = var_1.c.a.x;
    return var_1;
}

fn func_1(arg_0: bool) -> vec3<f32> {
    let var_0 = func_5(~abs(u_input.a) & _wgslsmith_clamp_u32(u_input.d, func_4(!global3.x, firstTrailingBit(6294u), func_2()), 82425u));
    global2 = array<Struct_1, 11>();
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2145f, 177f, 949f))) - vec3<f32>(-962f, _wgslsmith_f_op_f32(global0.b.x * global0.b.x), _wgslsmith_f_op_f32(max(global0.b.x, 586f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2().b.x, global0.b.x, _wgslsmith_f_op_f32(step(var_0.a.x, 115f)))), _wgslsmith_f_op_vec3_f32(sign(global0.b)), !global3.wwz))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-5897i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-854f, 2917f, 1152f), vec3<f32>(652f, global0.b.x, global0.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(global0.a.x)))), any(global0.a))));
}

