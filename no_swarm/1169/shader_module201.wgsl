struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(-1810f, 396f), Struct_2(vec4<u32>(1u, 4294967295u, 55456u, 5543u), vec2<bool>(false, false), vec2<bool>(false, false), vec4<f32>(-2204f, -593f, -1000f, -1000f)), vec3<bool>(true, false, true));

var<private> global1: array<Struct_1, 31>;

var<private> global2: vec3<u32>;

var<private> global3: vec2<f32> = vec2<f32>(1083f, 586f);

var<private> global4: Struct_1 = Struct_1(vec2<f32>(-307f, 1000f), 16282i, true, vec3<u32>(0u, 4294967295u, 40653u), vec4<f32>(-529f, -511f, -434f, 455f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_3) -> u32 {
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-global4.a), abs(~global4.b), any(select(arg_3.c, !vec3<bool>(false, true, global0.b.b.x), arg_3.b.c.x)), max(countOneBits(~reverseBits(arg_0)), _wgslsmith_mult_vec3_u32(~(arg_0 << (global4.d % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.a, 44149u, 1u), arg_1.d, global0.c), firstLeadingBit(arg_0), vec3<u32>(4294967295u, 87672u, 31442u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1459f, global4.e.x, -1000f, global0.b.d.x))), vec4<f32>(_wgslsmith_div_f32(arg_1.e.x, global4.a.x), _wgslsmith_f_op_f32(trunc(459f)), _wgslsmith_f_op_f32(1000f - global0.b.d.x), arg_1.e.x)))));
    var var_0 = _wgslsmith_f_op_f32(trunc(336f));
    var var_1 = global4.b;
    var var_2 = global1[_wgslsmith_index_u32(arg_3.b.a.x, 31u)];
    var var_3 = vec4<bool>(~(i32(-1i) * -global4.b) >= var_2.b, arg_1.c || true, false, all(select(!global0.c.zy, !select(vec2<bool>(true, true), arg_3.b.b, false), vec2<bool>(any(arg_3.c.xz), arg_1.c))));
    return ~arg_3.b.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.d.x, _wgslsmith_f_op_f32(-global4.a.x))))), Struct_2(vec4<u32>(func_3(global4.d, Struct_1(vec2<f32>(global0.a.x, 823f), 0i, false, vec3<u32>(4294967295u, 1u, 38843u), vec4<f32>(-371f, global0.a.x, global3.x, global4.e.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-775f, global4.a.x), vec2<f32>(1000f, 1763f))), Struct_3(global0.a, global0.b, global0.c)), 77208u, _wgslsmith_dot_vec3_u32(abs(global0.b.a.xyz), select(global4.d, global4.d, global4.c)), _wgslsmith_dot_vec2_u32(~global0.b.a.yy, ~vec2<u32>(0u, global0.b.a.x))), !(!select(global0.b.c, global0.b.b, global4.c)), !(!(!vec2<bool>(global4.c, global4.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1381f)), _wgslsmith_f_op_f32(abs(200f)), _wgslsmith_f_op_f32(global0.b.d.x * global3.x), global3.x))), !vec3<bool>(global0.b.c.x, any(!global0.c), !global0.c.x));
    let var_1 = var_0;
    var var_2 = select(var_1.c, var_1.c, select(select(select(var_0.c, !var_0.c, !var_1.c.x), select(var_0.c, select(vec3<bool>(var_1.b.b.x, var_0.c.x, true), global0.c, false), any(var_0.c.zz)), var_1.c), vec3<bool>(any(var_0.b.b), false, _wgslsmith_f_op_f32(-var_0.b.d.x) > _wgslsmith_div_f32(global3.x, global3.x)), vec3<bool>(var_0.c.x, global4.c, global4.c)));
    var_2 = global0.c;
    let var_3 = ~1u;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1516f * 150f), 1354f))), -global4.b, var_1.c.x, global4.d, global0.b.d);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> Struct_3 {
    let var_0 = global2.x;
    global4 = func_2();
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-1435f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.e.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1647f)), _wgslsmith_f_op_f32(213f + global0.b.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(min(-417f, _wgslsmith_f_op_f32(global4.a.x - global4.e.x))))), -508f, -890f);
    let var_2 = Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>((u_input.a ^ global2.x) << (max(4294967295u, 0u) % 32u), 1u, global4.d.x, 1u), ~(~global0.b.a) >> (global0.b.a % vec4<u32>(32u))), vec2<bool>(!(true & any(arg_0.zzw)), ~25244u > global0.b.a.x), global0.b.b, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1179f, 853f))), _wgslsmith_f_op_f32(min(680f, _wgslsmith_f_op_f32(f32(-1f) * -187f)))), -459f, _wgslsmith_f_op_f32(-531f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f) - global3.x)), _wgslsmith_f_op_f32(max(-873f, _wgslsmith_f_op_f32(-var_1.x)))));
    var_1 = global4.e;
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0.b.d.xx))), Struct_2(abs(reverseBits(global0.b.a >> (vec4<u32>(u_input.a, 1354u, u_input.a, 14169u) % vec4<u32>(32u)))), !(!vec2<bool>(var_2.c.x, false)), !select(global0.b.b, select(var_2.b, global0.b.c, vec2<bool>(true, arg_0.x)), true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global4.e.x, global0.a.x, 1153f))))), select(arg_0.xyy, vec3<bool>(global0.c.x, any(vec4<bool>(false, arg_0.x, false, false)), any(vec3<bool>(global4.c, false, true))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!select(vec4<bool>(global0.b.c.x, false, true, global4.c), !vec4<bool>(true, false, global0.c.x, false), all(vec3<bool>(global0.c.x, true, global0.b.c.x)))), ~(~(~(u_input.a << (60836u % 32u)))));
    var var_1 = 978f;
    let var_2 = any(vec3<bool>(all(vec2<bool>(false, !global0.b.b.x)), true, any(!select(vec2<bool>(global4.c, global0.b.b.x), vec2<bool>(global4.c, global4.c), false))));
    global4 = Struct_1(vec2<f32>(func_2().e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + global4.a.x))), ~(~(~_wgslsmith_mult_i32(-61238i, global4.b))), _wgslsmith_f_op_f32(func_1(vec4<bool>(global4.c, false, global0.b.c.x, global4.c), max(var_0.b.a.x, var_0.b.a.x)).a.x * global0.a.x) >= global4.e.x, vec3<u32>(max(countOneBits(reverseBits(global0.b.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.a.x, u_input.a, 1u, 41725u), var_0.b.a), max(var_0.b.a, vec4<u32>(1u, global4.d.x, 46675u, u_input.a)))), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.x, 4294967295u), vec3<u32>(~4294967295u, 0u, global4.d.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.e.x)) + _wgslsmith_f_op_f32(global4.e.x + global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + global4.a.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.x + 296f)))), _wgslsmith_f_op_f32(sign(var_0.b.d.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-623f)), global0.a.x, var_2))));
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-597f, _wgslsmith_f_op_f32(global0.b.d.x - _wgslsmith_f_op_f32(var_0.b.d.x * 545f)))), global4.b, func_2().c, vec3<u32>(~global2.x, 0u, u_input.a), _wgslsmith_f_op_vec4_f32(var_0.b.d * global4.e));
    let var_3 = var_0.b.c;
    let var_4 = ~1u;
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(0u, abs(max(firstLeadingBit(vec3<i32>(-1i, 18191i, 2147483647i)) << (reverseBits(vec3<u32>(global2.x, var_0.b.a.x, 0u)) % vec3<u32>(32u)), min(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 31168i, global4.b), vec3<i32>(global4.b, global4.b, -2147483647i)), firstTrailingBit(vec3<i32>(global4.b, global4.b, global4.b))))), vec2<i32>(~global4.b, abs(14247i)), -697f);
}

