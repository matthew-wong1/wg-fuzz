struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(Struct_1(vec2<f32>(575f, 931f), vec2<i32>(2147483647i, i32(-2147483648)), 0i, vec3<i32>(-28294i, 7877i, -24548i)), 4294967295u, Struct_1(vec2<f32>(-1000f, 180f), vec2<i32>(1i, 4528i), 33950i, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648))), vec3<bool>(false, true, true)), Struct_2(Struct_1(vec2<f32>(-1267f, 525f), vec2<i32>(0i, i32(-2147483648)), -1537i, vec3<i32>(-9469i, -1i, 20048i)), 1u, Struct_1(vec2<f32>(-278f, 1696f), vec2<i32>(2147483647i, 8284i), 49346i, vec3<i32>(1i, -23614i, -26419i)), vec3<bool>(true, true, false)), vec3<i32>(-25159i, -13216i, i32(-2147483648)));

var<private> global1: array<Struct_2, 26>;

var<private> global2: array<Struct_2, 7>;

var<private> global3: array<i32, 11> = array<i32, 11>(0i, -31883i, 38851i, 6738i, 2147483647i, 22974i, -1i, -1i, -11411i, 2147483647i, -51544i);

var<private> global4: vec4<u32> = vec4<u32>(87918u, 1u, 0u, 115297u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> f32 {
    global4 = vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.a), firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 3322u, u_input.b.x) & vec4<u32>(u_input.a, global0.a.b, 23919u, global0.a.b), vec4<u32>(global4.x, global0.b.b, global0.b.b, 29607u)), ~_wgslsmith_dot_vec3_u32(global4.xwx, vec3<u32>(u_input.a, 4294967295u, 949u)))), global0.b.b, 31021u);
    var var_0 = countOneBits(1u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a.a.a.x, 666f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.a.a - vec2<f32>(-1464f, -179f))), vec2<bool>(global0.a.d.x || global0.a.d.x, global0.b.d.x || true))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.a.a) + _wgslsmith_f_op_vec2_f32(-global0.a.a.a)), global0.a.a.a))), -global0.b.c.b, firstTrailingBit(~0i), firstTrailingBit(global0.c) >> (vec3<u32>(~1u, global4.x, ~4294967295u) % vec3<u32>(32u)));
    return 348f;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_2(global0.b.c, _wgslsmith_dot_vec2_u32(~(vec2<u32>(global0.b.b, 0u) << (u_input.b % vec2<u32>(32u))), ~countOneBits(vec2<u32>(u_input.b.x, u_input.a))), global0.a.a, !vec3<bool>(any(select(vec4<bool>(arg_3.x, false, true, global0.a.d.x), vec4<bool>(false, arg_3.x, arg_3.x, global0.a.d.x), vec4<bool>(global0.a.d.x, arg_3.x, arg_3.x, global0.a.d.x))), true, arg_3.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(694f, var_0.a.a.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-171f, arg_2.a))), _wgslsmith_f_op_vec2_f32(min(var_0.c.a, _wgslsmith_f_op_vec2_f32(sign(arg_1.xx)))), true)))));
    let var_2 = -countOneBits(vec4<i32>(firstTrailingBit(global3[_wgslsmith_index_u32(var_0.b, 11u)]), ~var_0.a.c, 1i << (~arg_2.b.x % 32u), -28640i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global4.x, arg_2.b.x, arg_2.b.x), vec4<u32>(var_0.b, 0u, 1u, global0.b.b)) % 32u)));
    var var_3 = ~(reverseBits(vec2<i32>(global3[_wgslsmith_index_u32(arg_2.b.x, 11u)] ^ var_0.c.d.x, arg_2.c >> (1u % 32u))) ^ vec2<i32>(~(i32(-1i) * -2147483647i), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_add_i32(var_2.x, arg_2.c))));
    var var_4 = Struct_4(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(countOneBits(global0.b.b), 7u)], var_2.zzx);
    return var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_4 {
    global1 = array<Struct_2, 26>();
    var var_0 = func_3(-774f, vec3<f32>(_wgslsmith_f_op_f32(func_2()), 700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.a.a.x, arg_1.a.a.x)))), Struct_3(_wgslsmith_f_op_f32(abs(1098f)), vec3<u32>(global0.a.b, 4294967295u, u_input.a) | global4.zzw, -(-global0.b.a.c ^ -21417i)), global0.b.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1726f, -655f, arg_2.a.x, global0.a.c.a.x), vec4<f32>(1000f, var_0.a.a.x, 643f, 898f), false)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-828f, arg_1.a.a.x, 1016f, global0.a.a.a.x) + vec4<f32>(232f, 120f, -793f, -539f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.c.a.x, arg_1.c.a.x, 1000f) * vec4<f32>(arg_1.c.a.x, arg_1.c.a.x, var_0.a.a.x, -1911f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, -2046f, 850f, 1000f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1223f, _wgslsmith_f_op_f32(-arg_2.a.x), -655f, arg_2.a.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c.a.x, arg_2.a.x, -1391f, 1453f), vec4<f32>(1000f, arg_1.a.a.x, 176f, var_0.a.a.x), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, -377f, global0.a.c.a.x, arg_2.a.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-805f, global0.a.c.a.x, -1000f, arg_2.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.a.x, 918f, 1537f, arg_1.a.a.x) * vec4<f32>(var_0.a.a.x, var_0.a.a.x, 280f, -2337f)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c.a.x, arg_1.a.a.x, -1247f, -2420f) - vec4<f32>(1191f, 1221f, 1016f, global0.b.c.a.x)))))));
    var var_2 = true;
    var_0 = arg_1;
    return Struct_4(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.a.a.x - var_1.x))), _wgslsmith_f_op_f32(select(var_0.c.a.x, _wgslsmith_div_f32(var_0.a.a.x, 2043f), true))), var_1.zyx, Struct_3(_wgslsmith_f_op_f32(654f - _wgslsmith_f_op_f32(-178f - arg_2.a.x)), ~vec3<u32>(56443u, 1u, u_input.a) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_1.b, global4.x), global4.xxw), reverseBits(arg_2.b.x) | -2147483647i), select(!vec3<bool>(false, arg_1.d.x, arg_1.d.x), func_3(_wgslsmith_f_op_f32(-var_1.x), var_1.zxz, Struct_3(arg_2.a.x, vec3<u32>(global0.a.b, 72757u, global4.x), -1i), vec3<bool>(global0.b.d.x, false, var_0.d.x)).d, true)), global2[_wgslsmith_index_u32(global4.x, 7u)], vec3<i32>(global0.a.a.d.x, 2147483647i, -_wgslsmith_dot_vec3_i32(global0.b.a.d, vec3<i32>(arg_2.c, global0.a.a.c, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(global3[_wgslsmith_index_u32(12174u, 11u)]), ~global3[_wgslsmith_index_u32(global0.b.b, 11u)]), 0i, firstTrailingBit(global0.a.a.c)), global2[_wgslsmith_index_u32(u_input.a, 7u)], global0.b.a);
    let var_1 = !var_0.b.d.yx;
    var var_2 = select(vec4<bool>(var_1.x, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.a.a.x, -949f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c.a.x, -542f, var_0.b.c.a.x)), Struct_3(_wgslsmith_div_f32(431f, 892f), global4.yyy, reverseBits(global3[_wgslsmith_index_u32(114388u, 11u)])), vec3<bool>(var_0.b.d.x, true, !global0.b.d.x)).d.x, false, true), !(!vec4<bool>(func_1(vec3<i32>(-1i, -2147483647i, -1i), global1[_wgslsmith_index_u32(global0.b.b, 26u)], var_0.b.c).b.d.x, any(var_0.a.d.yx), any(vec4<bool>(true, true, var_1.x, true)), true)), !select(!select(vec4<bool>(true, var_0.a.d.x, var_0.b.d.x, global0.a.d.x), vec4<bool>(true, var_1.x, false, global0.a.d.x), global0.a.d.x), select(!vec4<bool>(true, false, true, var_0.b.d.x), !vec4<bool>(var_1.x, var_0.a.d.x, var_1.x, false), var_0.b.d.x), any(vec3<bool>(var_1.x, true, var_0.b.d.x))));
    let var_3 = !(true != all(global0.a.d.zy));
    var var_4 = _wgslsmith_f_op_f32(-513f + func_3(-181f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1617f, -1249f, -1000f))))), Struct_3(global0.b.a.a.x, _wgslsmith_sub_vec3_u32(~global4.xyx, global4.zyx), -2147483647i), select(var_0.b.d, var_0.b.d, vec3<bool>(var_2.x, !global0.a.d.x, -11982i >= global3[_wgslsmith_index_u32(global4.x, 11u)]))).c.a.x);
    var var_5 = Struct_3(729f, global4.xxz, abs(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(-2147483647i, 45797i, -2147483647i, global0.c.x), vec4<i32>(global0.c.x, global3[_wgslsmith_index_u32(global0.a.b, 11u)], 0i, 40042i), vec4<bool>(var_3, false, true, var_2.x)), -(vec4<i32>(-4628i, 41448i, 0i, -2744i) << (vec4<u32>(global0.a.b, u_input.b.x, 0u, global4.x) % vec4<u32>(32u))))));
    global3 = array<i32, 11>();
    global2 = array<Struct_2, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_5.b.x, _wgslsmith_mod_u32(u_input.a, func_3(var_5.a, vec3<f32>(-1347f, 509f, global0.b.a.a.x), Struct_3(-242f, var_5.b, 1i), var_0.a.d).b)), vec2<u32>(4294967295u, global4.x), min(_wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0.a.b, u_input.b.x), u_input.b, vec2<bool>(var_2.x, var_2.x)), vec2<u32>(23665u, 0u)), var_5.b.zz >> (abs(vec2<u32>(global4.x, global4.x)) % vec2<u32>(32u)))), ~vec4<u32>(1u, 1u, min(_wgslsmith_sub_u32(var_5.b.x, u_input.a), firstLeadingBit(u_input.a)), ~var_5.b.x), global4.x, _wgslsmith_f_op_f32(f32(-1f) * -966f), max(~select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.b, 46595u, 3999u), global4.wyx), ~vec3<u32>(2237u, var_5.b.x, global0.a.b), var_0.b.d), abs(abs(~var_5.b))));
}

