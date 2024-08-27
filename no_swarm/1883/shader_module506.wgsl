struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool>;

var<private> global2: vec3<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_4) -> vec3<f32> {
    global0 = -1932f;
    var var_0 = 1491f;
    var var_1 = arg_2;
    global1 = !vec4<bool>(true, arg_2.b.e.x, !(arg_2.b.b.x > ~(-41214i)), true);
    var var_2 = true;
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_2.b.c - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.c)))));
}

fn func_1() -> Struct_4 {
    global1 = vec4<bool>(true, !global1.x & (true | (true & global1.x)), false, global1.x);
    let var_0 = ~_wgslsmith_sub_vec2_u32(~(~global2.xy), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.c.x, u_input.c.x) | _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 17282u), global2.zx)));
    global2 = _wgslsmith_mod_vec3_u32(u_input.c.yyy, _wgslsmith_add_vec3_u32(vec3<u32>(1u, ~_wgslsmith_sub_u32(u_input.c.x, 78288u), ~0u), max(vec3<u32>(~4294967295u, var_0.x ^ u_input.c.x, select(u_input.c.x, 49999u, global1.x)), abs(u_input.c.ywz))));
    global2 = ~_wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(38789u, 0u, 61149u), vec3<u32>(4294967295u, global2.x, var_0.x), u_input.c.yxy) >> ((u_input.c.ywy >> (select(vec3<u32>(4294967295u, 11039u, var_0.x), vec3<u32>(global2.x, global2.x, u_input.c.x), global1.zzx) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(abs(u_input.c.zwz) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, var_0.x, global2.x), u_input.c.wxy), countOneBits(~vec3<u32>(4294967295u, u_input.c.x, 1u))));
    global0 = -1000f;
    return Struct_4(~(~u_input.c.zwx), Struct_1(global1.zw, vec3<i32>(-(~53114i), _wgslsmith_sub_i32(u_input.b.x, 1i), ~(~u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-206f, -228f, -1053f))) * _wgslsmith_f_op_vec3_f32(func_2(true, u_input.c, Struct_4(u_input.c.yzw, Struct_1(global1.xz, vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), vec3<f32>(-363f, -1000f, 146f), vec2<u32>(var_0.x, 0u), global1.wxz), u_input.c.x))))), countOneBits(reverseBits(vec2<u32>(u_input.c.x, var_0.x))), global1.xyx), global2.x);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: bool, arg_3: vec3<bool>) -> Struct_3 {
    global0 = arg_0.b.c.x;
    var var_0 = vec3<i32>(countOneBits(-(i32(-1i) * -u_input.a)), _wgslsmith_add_i32(_wgslsmith_div_i32(0i, _wgslsmith_sub_i32(arg_0.b.b.x, -14787i) & u_input.b.x), 2147483647i), arg_0.b.b.x);
    var var_1 = Struct_3(vec4<bool>(arg_3.x, any(select(!vec4<bool>(arg_2, true, arg_2, global1.x), !vec4<bool>(false, global1.x, false, arg_2), true)), any(arg_1.zy), !arg_2), Struct_1(!(!vec2<bool>(arg_0.b.a.x, arg_1.x)), vec3<i32>(-1i) * -arg_0.b.b, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -682f), -384f)), _wgslsmith_f_op_vec3_f32(func_2(false, u_input.c, arg_0)).x, 1133f), vec2<u32>(1u, 1u), vec3<bool>(false, arg_2, arg_2)), ~(~(min(var_0.x, 0i) & (18472i ^ var_0.x))), false);
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1.b.c.zx);
    let var_3 = Struct_2(_wgslsmith_div_f32(arg_0.b.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(805f)) * _wgslsmith_f_op_f32(var_2.x - arg_0.b.c.x)), _wgslsmith_f_op_vec3_f32(func_2(1298f < var_2.x, ~u_input.c, func_1())).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * arg_0.b.c.x), select(select(vec3<bool>(true, !arg_0.b.a.x, any(arg_1)), arg_0.b.e, !var_1.a.xxy), select(var_1.a.xxw, vec3<bool>(true, arg_3.x | true, arg_0.b.a.x), arg_2), vec3<bool>(true, false, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.c) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.b.c, vec3<f32>(var_1.b.c.x, -389f, 976f))) + _wgslsmith_div_vec3_f32(var_1.b.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c.x, arg_0.b.c.x, 179f))))));
    return Struct_3(var_1.a, Struct_1(arg_1.zx, var_1.b.b | ~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -35592i, u_input.a), arg_0.b.b), arg_0.b.c, _wgslsmith_clamp_vec2_u32(arg_0.a.yx, arg_0.b.d, vec2<u32>(global2.x, global2.x)) >> (~_wgslsmith_clamp_vec2_u32(arg_0.a.xx, u_input.c.ww, vec2<u32>(arg_0.c, u_input.c.x)) % vec2<u32>(32u)), !(!select(arg_0.b.e, vec3<bool>(true, true, global1.x), arg_3))), select(~(-var_0.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.x, -1i, -var_1.b.b.x), 0i), arg_2), var_1.d);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_2.b.c + vec3<f32>(_wgslsmith_f_op_f32(arg_3.b.c.x + 1000f), arg_2.b.c.x, func_1().b.c.x));
    var var_1 = vec3<i32>(0i, reverseBits(_wgslsmith_div_i32(func_3(Struct_4(vec3<u32>(arg_3.b.d.x, arg_0.b.d.x, 0u), Struct_1(arg_3.b.e.zz, arg_3.b.b, vec3<f32>(2053f, arg_0.b.c.x, var_0.x), u_input.c.zx, arg_2.b.e), 4294967295u), global1.zxz, true, vec3<bool>(global1.x, arg_2.a.x, false)).c | arg_3.c, u_input.a)), _wgslsmith_dot_vec3_i32(reverseBits(min(vec3<i32>(-1i, arg_2.c, 2147483647i), select(vec3<i32>(-10907i, 3502i, arg_2.b.b.x), arg_3.b.b, vec3<bool>(false, false, true)))), max(arg_2.b.b, vec3<i32>(arg_0.b.b.x, -9039i, arg_2.b.b.x) | reverseBits(arg_2.b.b))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_1().b.c.x, 887f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.c.x, -129f)), _wgslsmith_div_f32(1000f, arg_0.b.c.x)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f)), 2074f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2.b.c.x, 231f), arg_2.b.c.x)), 103f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -582f), -2731f, _wgslsmith_f_op_f32(f32(-1f) * -612f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1111f)), -2799f))));
    global1 = func_3(Struct_4(~reverseBits(firstTrailingBit(vec3<u32>(arg_1.x, 24082u, arg_0.b.d.x))), func_3(Struct_4(abs(u_input.c.xyw), func_3(Struct_4(vec3<u32>(global2.x, arg_2.b.d.x, arg_0.b.d.x), Struct_1(vec2<bool>(global1.x, false), arg_0.b.b, arg_2.b.c, vec2<u32>(0u, arg_3.b.d.x), arg_3.a.yyz), arg_3.b.d.x), arg_0.a.xxw, false, vec3<bool>(true, true, false)).b, arg_3.b.d.x), func_3(func_1(), arg_0.a.yxx, true, select(arg_3.b.e, global1.zxy, vec3<bool>(global1.x, true, false))).b.e, arg_1.x != 1u, func_1().b.e).b, ~arg_0.b.d.x), vec3<bool>(true, true, !(!(!arg_3.b.a.x))), all(vec4<bool>(arg_0.b.e.x, false, true, false)), !func_3(Struct_4(select(arg_1.xwx, arg_1.zxy, arg_2.a.zyx), func_1().b, arg_2.b.d.x), vec3<bool>(true, func_1().b.e.x, false), arg_3.b.a.x, vec3<bool>(true, arg_0.b.e.x || false, all(arg_3.a))).a.yyw).a;
    let var_3 = arg_3.b.c.x;
    return func_1().b.c.x;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: Struct_4) -> Struct_3 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-856f, arg_3.b.c.x))))), _wgslsmith_f_op_f32(ceil(arg_2.d.x)));
    global1 = !(!(!vec4<bool>(!arg_2.c.x, arg_2.c.x, arg_1, true)));
    var var_0 = func_3(Struct_4(u_input.c.wzx, Struct_1(arg_2.c.xz, firstTrailingBit(vec3<i32>(26794i, -1i, -29923i)), _wgslsmith_f_op_vec3_f32(-arg_3.b.c), global2.xy, func_1().b.e), ~39573u), func_3(Struct_4(~u_input.c.zzw, Struct_1(vec2<bool>(false, arg_0), arg_3.b.b, arg_3.b.c, arg_3.b.d, arg_2.c), select(arg_3.c, global2.x, arg_2.c.x)), !arg_2.c, false, vec3<bool>(arg_2.c.x, true, func_1().b.a.x)).a.ywy, global1.x, vec3<bool>(all(arg_2.c.xx), any(select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(false, arg_2.c.x, arg_2.c.x, arg_1), false)), arg_3.b.e.x)).b.d << (vec2<u32>(_wgslsmith_dot_vec2_u32(~(~u_input.c.wx), vec2<u32>(~u_input.c.x, ~arg_3.c)), firstLeadingBit(global2.x) << ((arg_3.a.x | ~1u) % 32u)) % vec2<u32>(32u));
    global2 = abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(max(1u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 52661u, u_input.c.x, arg_3.a.x), vec4<u32>(u_input.c.x, arg_3.b.d.x, var_0.x, 0u)), global2.x, _wgslsmith_div_u32(1u, 1u)), vec4<u32>(~1u, ~19410u, func_1().b.d.x, 4294967295u)), var_0.x, reverseBits(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)) | var_0.x));
    let var_1 = !func_1().b.e.x;
    return func_3(arg_3, func_3(Struct_4(arg_3.a, arg_3.b, abs(0u)), !vec3<bool>(arg_1, 1501f != arg_3.b.c.x, var_1), true, arg_3.b.e).b.e, any(select(vec4<bool>(!arg_3.b.e.x, all(arg_3.b.e), true, func_3(Struct_4(u_input.c.zww, arg_3.b, 1u), arg_2.c, arg_2.c.x, vec3<bool>(global1.x, true, false)).a.x), vec4<bool>(!arg_0, true, true, 0i != arg_3.b.b.x), func_3(arg_3, !vec3<bool>(arg_1, false, arg_3.b.e.x), 545f < arg_2.d.x, select(global1.zyz, vec3<bool>(false, true, true), true)).a)), arg_3.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(702f, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1116f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1560f))), -819f)));
    let var_2 = func_5(~u_input.c.x <= max(_wgslsmith_add_u32(_wgslsmith_mult_u32(global2.x, 1u), _wgslsmith_clamp_u32(30498u, global2.x, 111634u)), 4294967295u), ~(~3287u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), vec2<u32>(11673u, u_input.c.x)) % 32u)) < _wgslsmith_sub_u32(global2.x, _wgslsmith_add_u32(global2.x, ~u_input.c.x)), Struct_2(var_1.x, _wgslsmith_f_op_f32(func_4(func_3(func_1(), global1.zxy, global1.x, func_1().b.e), u_input.c, Struct_3(select(vec4<bool>(false, false, false, true), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, false)), func_1().b, -u_input.a, any(vec3<bool>(global1.x, global1.x, true))), func_3(Struct_4(u_input.c.xww, Struct_1(global1.yz, vec3<i32>(u_input.b.x, u_input.b.x, u_input.a), vec3<f32>(var_1.x, -157f, var_1.x), u_input.c.xw, global1.xwz), 6632u), !vec3<bool>(false, global1.x, true), false, vec3<bool>(global1.x, global1.x, global1.x)))), !func_3(Struct_4(u_input.c.yxw, Struct_1(global1.yx, vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<f32>(489f, var_1.x, -319f), vec2<u32>(4294967295u, global2.x), global1.zyw), 12353u), vec3<bool>(global1.x, global1.x, true), func_1().b.a.x, select(global1.zzx, global1.ywx, true)).a.wyy, vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)))))), func_1());
    var var_3 = ~(~9138u);
    var_1 = var_2.b.c.zx;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.b.c.x), var_2.b.c.x)), func_5(true, all(!var_2.a), Struct_2(func_5(var_2.a.x, var_2.b.d.x != global2.x, Struct_2(var_2.b.c.x, var_2.b.c.x, vec3<bool>(global1.x, true, true), var_2.b.c), Struct_4(u_input.c.zzz, var_2.b, 1u)).b.c.x, _wgslsmith_f_op_f32(-var_1.x), global1.xzy, func_1().b.c), func_1()).b.c.x, var_2.a.zww, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.c.x), var_1.x, 1549f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1090f, var_1.x, -543f))))))));
    let var_5 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))));
    var var_6 = Struct_1(vec2<bool>(all(var_2.a.zyy), !var_2.b.a.x), vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-541f, var_1.x, 1795f) + vec3<f32>(var_1.x, var_5, var_5)) - var_2.b.c) * var_4.d)), var_2.b.d, var_4.c);
    global2 = ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.c, ~u_input.c), (var_6.d.x >> (var_2.b.d.x % 32u)) << (~4294967295u % 32u), reverseBits(_wgslsmith_sub_u32(82931u, var_6.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_mod_u32(u_input.c.x, 1u), 4294967295u, 75105u), abs(u_input.c ^ select(vec4<u32>(var_2.b.d.x, 1u, var_2.b.d.x, 0u), u_input.c, var_6.e.x))));
}

