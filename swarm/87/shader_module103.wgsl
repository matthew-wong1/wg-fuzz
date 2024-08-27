struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(1398f, 1413f), vec4<u32>(0u, 134368u, 0u, 18081u), 80216u, vec4<i32>(1i, 0i, -26322i, -1i)), Struct_1(vec2<f32>(1013f, -564f), vec4<u32>(1u, 4294967295u, 0u, 0u), 39729u, vec4<i32>(20755i, 2147483647i, -19301i, 1i)), false, -2139f);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(638f, -1100f), vec4<u32>(47057u, 1u, 1u, 1u), 1u, vec4<i32>(32137i, 75813i, -49469i, 1i));

var<private> global2: array<i32, 29>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<f32>) -> f32 {
    global2 = array<i32, 29>();
    var var_0 = 35680u;
    global1 = Struct_1(arg_3.xy, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(9628u, arg_1.x, 1u, 29890u)), reverseBits(_wgslsmith_div_vec4_u32(u_input.b, global1.b))), vec4<u32>(_wgslsmith_mult_u32(max(4294967295u, 4294967295u), ~4294967295u), ~_wgslsmith_sub_u32(global0.a.c, arg_1.x), 0u, 81000u)), select(arg_1.x, 37000u, false), countOneBits(reverseBits(global1.d)));
    global0 = Struct_2(global0.b, Struct_1(global0.b.a, ~vec4<u32>(~19176u, 0u, 28483u, u_input.b.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(global1.b.xxw), vec3<u32>(global1.b.x, arg_1.x, global0.b.c)), min(1u, global0.a.b.x)), ~(~global0.b.d & abs(vec4<i32>(-1i, global1.d.x, global0.a.d.x, 21135i)))), false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - arg_2) * _wgslsmith_f_op_f32(floor(-188f))), 593f)))));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2, 596f)) + global1.a.x))), 1380f), u_input.b, _wgslsmith_clamp_u32(26205u, firstLeadingBit(reverseBits(min(4294967295u, global1.c))), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.c, global0.b.b.x, 1u, global0.a.c), ~vec4<u32>(global0.a.b.x, 0u, u_input.b.x, arg_1.x))), vec4<i32>(~2147483647i, _wgslsmith_clamp_i32(global1.d.x, global1.d.x, global2[_wgslsmith_index_u32(arg_1.x, 29u)]), global2[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(global1.b.x | 48785u, global0.b.b.x), arg_1.x), 29u)], min(-40978i, global2[_wgslsmith_index_u32(1u, 29u)])));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f)))), arg_3.x));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: f32) -> f32 {
    global2 = array<i32, 29>();
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, global0.b.b.xy, _wgslsmith_f_op_f32(select(2181f, 1236f, global0.c)), vec3<f32>(-806f, global0.d, -391f))) * arg_2), _wgslsmith_f_op_f32(-arg_2)), reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global1.b, firstLeadingBit(vec4<u32>(u_input.b.x, 92306u, 1u, 0u))), u_input.b)), firstLeadingBit(arg_1.x) & ~u_input.b.x, firstTrailingBit(global1.d));
    let var_0 = ~global1.b.wwy;
    var var_1 = global1.b.zxz;
    global0 = Struct_2(global0.b, Struct_1(global0.b.a, _wgslsmith_mod_vec4_u32(vec4<u32>(84128u, 24575u, var_1.x, global0.a.b.x) ^ vec4<u32>(arg_1.x, var_1.x, u_input.b.x, var_0.x), vec4<u32>(~0u, 7225u, var_1.x, ~global0.a.b.x)), 6257u, _wgslsmith_sub_vec4_i32(~vec4<i32>(global0.a.d.x, 18354i, global2[_wgslsmith_index_u32(4294967295u, 29u)], -16490i), select(global0.a.d, vec4<i32>(u_input.a.x, -36817i, 1i, u_input.a.x), false)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, global0.a.c, var_0.x, 1u), vec4<u32>(var_0.x, var_1.x, var_0.x, u_input.b.x)), var_1.x, ~arg_1.x, _wgslsmith_dot_vec2_u32(var_1.yx, var_1.zx)) % vec4<u32>(32u))), global0.b.d.x <= (global2[_wgslsmith_index_u32(~var_1.x >> (global1.c % 32u), 29u)] << ((_wgslsmith_dot_vec2_u32(global0.b.b.wx, var_1.xy) << (arg_1.x % 32u)) % 32u)), _wgslsmith_f_op_f32(step(arg_2, 661f)));
    return global1.a.x;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a.x, global1.a.x, -1147f, global0.a.a.x))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.a.x, global0.a.a.x, global0.a.a.x, 333f), vec4<f32>(-105f, -1000f, global1.a.x, 404f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-920f, 331f, 1000f, global1.a.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 1459f, 216f, global1.a.x)))))), vec4<f32>(-1334f, _wgslsmith_f_op_f32(-global1.a.x), -358f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-899f * 1631f), _wgslsmith_f_op_f32(func_2(true, vec3<u32>(arg_1.x, 0u, global0.b.c), global1.a.x)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1626f, 793f, -150f, global1.a.x)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1227f, global0.d, -857f, global0.d)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(360f, global0.a.a.x, 701f, global1.a.x), vec4<f32>(global0.b.a.x, -668f, global1.a.x, global1.a.x), true)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(arg_2.a, firstLeadingBit(_wgslsmith_add_vec4_u32(min(vec4<u32>(0u, 37433u, 0u, global0.a.c), u_input.b), global0.b.b)) & abs(~(vec4<u32>(global0.a.b.x, arg_2.c, 33817u, 4021u) ^ u_input.b)), firstLeadingBit(abs(~_wgslsmith_sub_u32(54272u, u_input.b.x))), -global0.b.d);
    global0 = Struct_2(arg_2, arg_2, true, _wgslsmith_f_op_f32(func_2(any(vec2<bool>(arg_3, -840f >= global1.a.x)), arg_2.b.ywx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * _wgslsmith_f_op_f32(var_0.a.x * global0.b.a.x))))));
    let var_1 = var_0.d.x;
    global2 = array<i32, 29>();
    let var_2 = !select(select(arg_1.yyw, vec3<bool>(2147483647i < var_0.d.x, all(vec3<bool>(global0.c, arg_1.x, true)), true), select(!arg_1.zxz, arg_1.zyx, vec3<bool>(false, global0.c, false))), select(!(!vec3<bool>(global0.c, false, false)), vec3<bool>(true, arg_3, any(arg_1.yxx)), arg_1.wyw), select(select(select(vec3<bool>(global0.c, arg_1.x, true), arg_1.yxz, arg_1.x), !arg_1.yyy, false), select(vec3<bool>(arg_1.x, false, arg_1.x), select(arg_1.xyy, vec3<bool>(true, arg_1.x, true), arg_1.wxx), false), select(arg_1.wyw, vec3<bool>(arg_1.x, false, arg_1.x), true)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), -217f), all(vec2<bool>(2147483647i >= u_input.a.x, any(var_2))))), global1.b | (_wgslsmith_div_vec4_u32(u_input.b, min(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 33611u), global0.a.b)) >> (~(vec4<u32>(global1.c, 26856u, arg_2.b.x, var_0.c) << (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))), ~(arg_2.b.x << (var_0.c % 32u)), firstTrailingBit(_wgslsmith_add_vec4_i32(global0.b.d, vec4<i32>(-6240i, abs(-31794i), -7981i, abs(-1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(_wgslsmith_f_op_vec4_f32(func_1(global1.c, global0.a.b << (_wgslsmith_div_vec4_u32(vec4<u32>(global1.b.x, u_input.b.x, 43907u, 1u), global0.a.b & global1.b) % vec4<u32>(32u)))), !vec4<bool>(true, true, false, !all(vec4<bool>(global0.c, global0.c, true, global0.c))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a.x, global0.a.a.x), global0.a.a, vec2<bool>(true, global0.c))))), vec4<u32>(0u, 11410u, 0u, 1u), abs(6246u), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 4386i, u_input.a.x, global0.a.d.x), vec4<i32>(36217i, global2[_wgslsmith_index_u32(45971u, 29u)], -1i, u_input.a.x), global1.d << (vec4<u32>(u_input.b.x, 1u, 1u, global1.c) % vec4<u32>(32u))), vec4<i32>(reverseBits(-2147483647i), ~global1.d.x, _wgslsmith_add_i32(0i, 2147483647i), _wgslsmith_clamp_i32(global1.d.x, 6413i, 56384i)))), !all(vec2<bool>(any(vec2<bool>(true, global0.c)), !global0.c)));
    var var_0 = Struct_2(func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - global0.a.a.x)), _wgslsmith_f_op_vec4_f32(func_1(firstLeadingBit(19394u), max(u_input.b, vec4<u32>(global0.b.c, 15615u, global0.a.b.x, 64294u)))).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1292f, global1.a.x) * -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.x)))), select(vec4<bool>(true, !global0.c, false, true), select(!vec4<bool>(false, false, global0.c, false), select(vec4<bool>(global0.c, global0.c, global0.c, true), vec4<bool>(true, true, true, false), global0.c), vec4<bool>(true, true, global0.c, global0.c)), global0.c || global0.c), global0.a, true), global0.b, global0.c, _wgslsmith_f_op_f32(func_2(false, func_4(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_dot_vec2_u32(global1.b.xy, global1.b.zx), ~global1.b)), vec4<bool>(!global0.c, any(vec2<bool>(global0.c, true)), !global0.c, true), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a.a), vec4<u32>(u_input.b.x, 31220u, u_input.b.x, global1.b.x) ^ global1.b, u_input.b.x, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -26422i, 18452i, 10909i), vec4<i32>(53108i, global0.a.d.x, 1i, global2[_wgslsmith_index_u32(u_input.b.x, 29u)]))), !(!global0.c)).b.zzz, 1999f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.a.x), global0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a.x, global1.a.x) * vec2<f32>(global1.a.x, -162f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-269f))) - _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_vec4_f32(func_1(u_input.b.x, vec4<u32>(global1.b.x, var_0.a.b.x, global0.a.b.x, global0.b.b.x))).x)) + 1263f), 29943u);
}

