struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<i32>;

var<private> global2: array<f32, 16> = array<f32, 16>(652f, 351f, -904f, -337f, -1473f, 115f, 239f, -114f, -144f, -344f, 1000f, -998f, 1216f, 273f, -297f, 348f);

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = select(!vec3<bool>(all(vec2<bool>(global0.x, global0.x)), global0.x, global0.x), vec3<bool>(!all(!vec4<bool>(global0.x, false, false, false)), 112f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 16u)])), true), select(!select(select(vec3<bool>(false, true, false), vec3<bool>(global0.x, false, global0.x), global0.x), vec3<bool>(global0.x, true, global0.x), global0.x), vec3<bool>(global0.x, firstTrailingBit(-20436i) == _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.b, 19862i), global1.yz), true), ~(arg_0.e.x >> (72283u % 32u)) >= ~(~1u)));
    let var_1 = !vec4<bool>(var_0.x, all(global0.xz), !(var_0.x != var_0.x), global0.x || true);
    let var_2 = 811f;
    var var_3 = _wgslsmith_mod_vec3_u32(abs(vec3<u32>(_wgslsmith_add_u32(u_input.b.x, arg_0.e.x) & u_input.c, u_input.b.x, _wgslsmith_dot_vec2_u32(~u_input.b, arg_0.e.xw))), arg_0.e.wyx);
    let var_4 = Struct_2(_wgslsmith_sub_vec2_u32(~(~(var_3.yy << (arg_0.e.zy % vec2<u32>(32u)))), arg_0.e.xx));
    return ~arg_0.d;
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = arg_0.c;
    var var_1 = _wgslsmith_add_vec4_u32(arg_0.e, reverseBits(vec4<u32>(4294967295u, u_input.c, arg_0.d, u_input.b.x)));
    var var_2 = Struct_4(select(vec3<bool>(all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), global0.x)), false || (var_1.x != 45310u), !global0.x), !vec3<bool>(any(vec4<bool>(true, global0.x, global0.x, global0.x)), !global0.x, false), !vec3<bool>(false, all(global0.yy), all(vec3<bool>(false, true, true)))));
    let var_3 = Struct_3(arg_0.c.b, reverseBits(global1.xz), Struct_1(_wgslsmith_f_op_f32(-var_0.a), u_input.d), 0u, vec4<u32>(arg_0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.c), _wgslsmith_mod_u32(77813u, 4294967295u), u_input.b.x, _wgslsmith_clamp_u32(499u, arg_0.d, var_1.x)), vec4<u32>(var_1.x, var_1.x, u_input.b.x, ~4294967295u)), ~func_3(Struct_3(global1.x, vec2<i32>(-1i, -35966i), var_0, u_input.b.x, vec4<u32>(4294967295u, 80516u, 128295u, 1u))), _wgslsmith_div_u32(732u, var_1.x)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 366f, _wgslsmith_f_op_f32(min(646f, -1754f)), var_3.c.a))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1435f, 1449f, arg_0.c.a, 3669f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(var_3.e.x, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)], var_3.c.a, arg_0.c.a)))) * vec4<f32>(global2[_wgslsmith_index_u32(~52804u, 16u)], _wgslsmith_f_op_f32(f32(-1f) * -173f), var_0.a, -913f))));
    return 1u;
}

fn func_1() -> f32 {
    var var_0 = abs(global1.zww);
    global1 = ~(-(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 58052i, var_0.x, global1.x), vec4<i32>(16238i, 17731i, 0i, global1.x)) ^ select(-vec4<i32>(45468i, 0i, -2147483647i, global1.x), ~vec4<i32>(var_0.x, -17738i, u_input.d, global1.x), vec4<bool>(false, true, false, global0.x))));
    var_0 = firstTrailingBit(vec3<i32>(~30522i, reverseBits(-2147483647i) >> ((func_2(Struct_3(var_0.x, vec2<i32>(12586i, -1i), global3[_wgslsmith_index_u32(u_input.b.x, 22u)], 0u, vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 0u))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 10473u, 18338u, 0u), vec4<u32>(45789u, u_input.b.x, u_input.b.x, u_input.b.x)) % 32u)) % 32u), _wgslsmith_div_i32(u_input.a.x >> (u_input.b.x % 32u), 2147483647i)));
    let var_1 = Struct_2(abs(~u_input.b));
    global0 = vec3<bool>(all(!(!global0.xz)), any(vec2<bool>(global0.x, all(select(vec2<bool>(global0.x, false), vec2<bool>(false, false), global0.yy)))), true);
    return global2[_wgslsmith_index_u32(1u, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!(!select(vec3<bool>(true, global0.x, true), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, false, true), global0.x), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, false, global0.x), true))), vec3<bool>(global0.x, !(!all(vec4<bool>(global0.x, global0.x, true, true))), global0.x && true), select(vec3<bool>(any(!global0.zz), true, any(vec2<bool>(true, true))), !vec3<bool>(!global0.x, false, global0.x), vec3<bool>(true, global0.x, !global0.x)));
    let var_0 = global1.x;
    global0 = select(vec3<bool>(_wgslsmith_sub_i32(i32(-1i) * -29255i, i32(-1i) * -12558i) > _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(1i, global1.x)), !any(vec4<bool>(global0.x, global0.x, global0.x, true)), global0.x), vec3<bool>(global0.x, global0.x, !all(!vec3<bool>(true, global0.x, global0.x))), all(!vec4<bool>(global0.x, false, true, false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~u_input.b.x, ~u_input.b.x), 16u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(375f)) + -563f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-344f * 685f))), _wgslsmith_f_op_f32(func_1())));
    let var_2 = ~u_input.c;
    var var_3 = global3[_wgslsmith_index_u32(1u, 22u)];
    let var_4 = Struct_3(-2147483647i, _wgslsmith_mod_vec2_i32(global1.zz >> (u_input.b % vec2<u32>(32u)), vec2<i32>(reverseBits(global1.x | global1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -2147483647i), ~u_input.e.zx))), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(51788u, _wgslsmith_add_u32(~u_input.c, 4294967295u & u_input.b.x)), 22u)], u_input.c, abs(_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(u_input.c, u_input.b.x, var_2, var_2)), min(vec4<u32>(4294967295u, u_input.c, var_2, 4294967295u) & vec4<u32>(var_2, var_2, 1363u, 16188u), select(vec4<u32>(1u, u_input.c, u_input.c, var_2), vec4<u32>(var_2, 38567u, var_2, var_2), vec4<bool>(global0.x, global0.x, global0.x, global0.x))))));
    let var_5 = Struct_1(-1441f, min(max(_wgslsmith_dot_vec3_i32(global1.zzw, vec3<i32>(var_3.b, var_3.b, -5636i)), 18180i << (1u % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_4.a, -1i), ~global1.xx), max(vec2<i32>(2147483647i, var_3.b), -u_input.e.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(max((vec4<i32>(var_3.b, global1.x, -1i, var_3.b) ^ vec4<i32>(u_input.d, var_3.b, var_4.b.x, var_3.b)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-20784i, global1.x, 2147483647i, -3439i), vec4<i32>(2147483647i, -2430i, -26204i, u_input.a.x), vec4<i32>(var_4.c.b, var_5.b, var_5.b, var_4.b.x)), vec4<i32>(max(-2147483647i, var_4.c.b), -56195i, abs(1i), global1.x))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 16u)] - var_3.a)), _wgslsmith_f_op_f32(step(558f, 233f))))), _wgslsmith_mod_i32(firstTrailingBit(~(-20056i)) | ~var_3.b, reverseBits(_wgslsmith_mod_i32(var_3.b, max(1i, -2147483647i)))));
}

