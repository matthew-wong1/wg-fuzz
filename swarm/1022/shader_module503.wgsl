struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<bool>;

var<private> global2: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(11797i, i32(-2147483648), 1i, 30612i), vec4<i32>(i32(-2147483648), 2147483647i, -14267i, 1548i), vec4<i32>(20544i, i32(-2147483648), 70027i, 2147483647i), vec4<i32>(1i, 2147483647i, -27131i, -46451i), vec4<i32>(2147483647i, 2147483647i, -19090i, 1i), vec4<i32>(-1i, 1i, -1i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, 1i, -25778i));

var<private> global3: array<u32, 28> = array<u32, 28>(4294967295u, 4294967295u, 1u, 19531u, 6073u, 4294967295u, 51363u, 1u, 1u, 47972u, 19904u, 43096u, 8200u, 39322u, 69730u, 0u, 1u, 0u, 4294967295u, 33854u, 6858u, 45462u, 0u, 1u, 5398u, 12160u, 21030u, 24531u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = Struct_1(vec3<bool>(arg_0.x, true, true), !select(arg_0.yxy, vec3<bool>(true, true, !arg_1), all(global1.yxz) || true), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_2.a.x, -598f)))))), !vec2<bool>(all(arg_0.ww), true), arg_2.b.x);
    global3 = array<u32, 28>();
    global3 = array<u32, 28>();
    var var_1 = Struct_3(arg_2, -u_input.e.x, countOneBits(~arg_2.b.x) << (global3[_wgslsmith_index_u32(~1u, 28u)] % 32u));
    var var_2 = var_0;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, 1104f)), var_2.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, arg_2.a.x) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(794f, -295f))), _wgslsmith_f_op_vec2_f32(min(var_2.c, arg_2.a.xz)), true))), select(vec2<bool>(var_2.b.x, global1.x), var_2.a.yy, arg_0.wy))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.c.x, arg_1.c.x, -796f))), ~(~vec3<u32>(0u, 63526u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.e, 28u)], 28u)], 28u)]))), arg_0, ~0u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(!vec4<bool>(false, arg_1.a.x, arg_1.a.x, false), global1.x, var_0.a))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, -518f) - _wgslsmith_f_op_vec2_f32(-var_0.a.a.zy))), _wgslsmith_div_vec2_f32(arg_1.c, var_0.a.a.xx)));
    var_1 = _wgslsmith_f_op_vec2_f32(var_0.a.a.zz * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.c), _wgslsmith_f_op_vec2_f32(round(var_0.a.a.xy)))));
    global2 = array<vec4<i32>, 7>();
    global2 = array<vec4<i32>, 7>();
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_4 {
    global1 = vec4<bool>(true, global1.x, true, global1.x || (arg_2.b.x <= ~arg_0.b.x));
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var var_1 = reverseBits(u_input.c.yy);
    global2 = array<vec4<i32>, 7>();
    var var_2 = Struct_4(-_wgslsmith_sub_i32(~1i, u_input.e.x >> (44895u % 32u)) != -43597i, Struct_1(vec3<bool>(true, all(select(global1.xwy, vec3<bool>(true, global1.x, true), false)), global1.x), vec3<bool>(true, true, any(global1.zz)), arg_0.a.xx, !vec2<bool>(all(vec2<bool>(false, false)), !global1.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.b.zz, arg_2.b.xy, arg_2.b.yz), arg_0.b.zy), 28u)]), Struct_1(!global1.ywy, !vec3<bool>(true, any(global1.yy), any(vec3<bool>(true, true, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a.x))), arg_0.a.x), select(global1.xx, global1.xy, !global1.wz), ~(~countOneBits(arg_0.b.x))), Struct_1(vec3<bool>(all(vec2<bool>(true, true)), global1.x, global1.x), !vec3<bool>(global1.x, global1.x, !global1.x), func_2(2147483647i | (arg_1.x | var_1.x), Struct_1(global1.wxz, vec3<bool>(true, true, true), vec2<f32>(499f, 113f), select(global1.wz, global1.ww, vec2<bool>(true, global1.x)), abs(4294967295u))).a.yy, !global1.wy, global3[_wgslsmith_index_u32(25827u, 28u)]));
    return Struct_4(abs(abs(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(var_1.x, var_1.x, arg_1.x)))) == firstTrailingBit(firstTrailingBit(1i)), Struct_1(vec3<bool>(var_2.a, !(!var_2.b.d.x), (global1.x && global1.x) || all(vec3<bool>(global1.x, true, global1.x))), !select(vec3<bool>(var_2.c.a.x, global1.x, global1.x), select(global1.ywz, global1.yzx, false), select(global1.wwx, vec3<bool>(false, global1.x, global1.x), false)), vec2<f32>(-510f, _wgslsmith_f_op_f32(min(-2315f, 778f))), vec2<bool>(true, !(var_2.d.a.x || false)), var_2.d.e), Struct_1(!select(vec3<bool>(true, true, true), !vec3<bool>(var_2.c.d.x, global1.x, false), var_2.b.a), global1.xyx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.c)), global1.zy, arg_2.b.x), Struct_1(!select(global1.xwz, !vec3<bool>(false, var_2.c.d.x, false), select(vec3<bool>(var_2.d.b.x, global1.x, var_2.c.a.x), var_2.d.b, global1.zyx)), !global1.xzy, var_2.d.c, global1.xw, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, var_2.c.e), 28u)]));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(14313i, max(_wgslsmith_mod_i32(-10050i, u_input.b), u_input.c.x & 20405i) | 45763i), -((-29416i << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.d.e, 28u)], 28u)] % 32u)) & u_input.b) << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(2977u, arg_1.c.e), select(arg_1.b.e, 0u, arg_1.d.b.x), ~arg_1.d.e), vec3<u32>(~arg_1.b.e, 42116u, ~63886u)) % 32u));
    global1 = select(!arg_0, select(select(arg_0, select(arg_0, vec4<bool>(arg_0.x, false, arg_0.x, true), arg_0), arg_0), vec4<bool>(arg_1.a, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.d.e, 28u)], 28u)], 28u)] <= ~arg_1.c.e, arg_1.d.d.x, false), arg_1.c.d.x), true);
    var var_1 = vec3<i32>(-abs(_wgslsmith_mod_i32(min(u_input.b, u_input.a), firstLeadingBit(var_0.x))), -3871i, u_input.e.x);
    global3 = array<u32, 28>();
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.b.c.x, 1019f, arg_1.b.c.x), vec3<f32>(-986f, arg_1.b.c.x, arg_1.b.c.x))))) - vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.d.c.x)), func_2(60274i, arg_1.d).a.x, _wgslsmith_div_f32(-603f, arg_1.c.c.x))), countOneBits(abs(vec3<u32>(global3[_wgslsmith_index_u32(arg_1.b.e, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], arg_1.c.e))) ^ ~vec3<u32>(global3[_wgslsmith_index_u32(arg_1.d.e, 28u)], global3[_wgslsmith_index_u32(40217u, 28u)], 29427u)), _wgslsmith_sub_i32(-2593i, _wgslsmith_add_i32(41174i, var_0.x)), min(1u, global3[_wgslsmith_index_u32(100718u, 28u)]));
    return func_2(abs(_wgslsmith_add_i32(~(~var_1.x), 1i)), Struct_1(func_4(Struct_2(var_2.a.a, vec3<u32>(0u, 1u, var_2.a.b.x)), max(var_1.xy, u_input.e), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-232f, 152f, arg_1.d.c.x) * var_2.a.a), vec3<u32>(12195u, arg_1.b.e, 4294967295u))).c.b, select(!(!arg_0.xzz), arg_1.d.a, !(!global1.yyw)), _wgslsmith_f_op_vec2_f32(var_2.a.a.zx + var_2.a.a.zz), !vec2<bool>(arg_1.c.b.x, any(vec2<bool>(true, false))), 4294967295u));
}

fn func_1() -> vec4<u32> {
    let var_0 = func_5(select(select(!(!vec4<bool>(global1.x, true, global1.x, global1.x)), !vec4<bool>(true, global1.x, global1.x, true), select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(false, true, false, global1.x), vec4<bool>(global1.x, global1.x, false, false), global1.x), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(59757u, 28u)], 28u)], 28u)], 28u)] <= 4294967295u)), select(select(vec4<bool>(true, global1.x, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false)), vec4<bool>(false, true, global1.x, global1.x)), select(select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, false, global1.x, true), global1.x), vec4<bool>(global1.x, true, false, global1.x), false), global1.x), ~(-u_input.b) == _wgslsmith_dot_vec3_i32(select(u_input.c, u_input.c, global1.xwz), u_input.c)), func_4(func_2(_wgslsmith_dot_vec2_i32(~u_input.c.xz, u_input.e & u_input.c.yx), Struct_1(!global1.wxx, vec3<bool>(false, global1.x, true), vec2<f32>(-1000f, 1000f), vec2<bool>(false, false), 55432u)), u_input.e, func_2(u_input.c.x, Struct_1(vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, global1.x, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(296f, 544f) + vec2<f32>(1325f, -414f)), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), false), ~1u))));
    var var_1 = abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~var_0.b.x, var_0.b.x), _wgslsmith_sub_u32(4294967295u, var_0.b.x)) << (var_0.b.x % 32u));
    let var_2 = ~vec4<u32>(global3[_wgslsmith_index_u32(~var_0.b.x, 28u)], ~global3[_wgslsmith_index_u32(abs(12474u), 28u)], var_0.b.x, var_0.b.x);
    var var_3 = _wgslsmith_mult_u32(var_2.x, 1u) >> (34576u % 32u);
    global1 = vec4<bool>(global1.x, all(!(!select(global1.yyw, global1.xww, vec3<bool>(false, false, false)))), !select(!any(vec2<bool>(global1.x, false)), any(select(vec3<bool>(true, true, false), vec3<bool>(global1.x, global1.x, global1.x), global1.yxw)), global1.x), all(!select(global1.yzz, !global1.zyx, true)));
    return vec4<u32>(~global3[_wgslsmith_index_u32(max(firstTrailingBit(0u), global3[_wgslsmith_index_u32(44028u, 28u)]), 28u)], _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(32377u, 28u)], global3[_wgslsmith_index_u32(~firstLeadingBit(~global3[_wgslsmith_index_u32(4294967295u, 28u)]), 28u)]), ~(_wgslsmith_div_u32(~var_2.x, ~var_0.b.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, global3[_wgslsmith_index_u32(var_2.x, 28u)]), var_2.xxx) % 32u)), ~var_2.x ^ ~(~var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 28>();
    global3 = array<u32, 28>();
    var var_0 = reverseBits(firstLeadingBit(~0u));
    let var_1 = ~global3[_wgslsmith_index_u32(4294967295u, 28u)];
    var var_2 = ~_wgslsmith_sub_vec4_i32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_1, ~var_1, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1, 28u)], 28u)] >> (0u % 32u)), 7u)] >> (firstLeadingBit(~vec4<u32>(0u, 57176u, 4294967295u, var_1)) % vec4<u32>(32u)), -vec4<i32>(~4426i, u_input.e.x, _wgslsmith_mod_i32(19942i, 36381i), ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yz, func_1());
}

