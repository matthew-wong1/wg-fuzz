struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<f32> = vec3<f32>(884f, -562f, -1154f);

var<private> global2: bool;

var<private> global3: array<Struct_2, 28>;

var<private> global4: vec2<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>) -> i32 {
    let var_0 = vec4<i32>(2147483647i, 1i, ~firstLeadingBit(~global0.e.x), countOneBits(_wgslsmith_dot_vec3_i32(~global0.c, _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.b, -1i, -1i)), global0.c ^ arg_2.www, countOneBits(vec3<i32>(6657i, -2147483647i, 1i))))));
    global3 = array<Struct_2, 28>();
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-599f - global1.x))), global0.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global0.d))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.d, -350f, -1253f), vec3<f32>(276f, 527f, global0.d), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1357f, global0.d, 767f)))))), any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true)) | true));
    let var_1 = vec2<u32>(arg_0.x, _wgslsmith_mult_u32(u_input.a.x, arg_0.x));
    let var_2 = vec2<i32>(reverseBits(16034i) >> (_wgslsmith_sub_u32(arg_1, var_1.x) % 32u), reverseBits(1i));
    return -arg_2.x;
}

fn func_2() -> Struct_4 {
    let var_0 = -vec4<i32>(~abs(-18147i), _wgslsmith_dot_vec4_i32(vec4<i32>(-33173i, global4.x, global4.x, u_input.b), global0.e & global0.e), 0i, global4.x) << (select(min(u_input.a, firstTrailingBit(~u_input.a)), u_input.a, true) % vec4<u32>(32u));
    global0 = Struct_3(4294967295u, global0.b, vec3<i32>(1i, func_3(u_input.c.xx, u_input.a.x, ~(~vec4<i32>(u_input.b, global4.x, var_0.x, -2147483647i))), var_0.x >> (~firstTrailingBit(u_input.a.x) % 32u)), global1.x, vec4<i32>(global0.c.x, global0.e.x, 26897i, ~(-26325i & _wgslsmith_add_i32(global0.e.x, global4.x))));
    var var_1 = vec4<i32>(_wgslsmith_mult_i32((-31231i & -var_0.x) ^ ~(0i >> (global0.b.x % 32u)), ~(-global0.e.x)), u_input.b, global4.x | _wgslsmith_add_i32(-_wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x), 1i), 1i);
    var var_2 = false;
    global4 = select(vec2<i32>(var_0.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(-23820i, global4.x, global0.e.x), var_0.wwx)), -var_0.ww, !(-32998i == -_wgslsmith_add_i32(u_input.b, global4.x)));
    return Struct_4(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) - global1.x))), any(vec3<bool>(true, true, true)) && true)), global3[_wgslsmith_index_u32(0u, 28u)], Struct_1(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), all(vec3<bool>(false, true, global1.x != global0.d))), !(u_input.c.x > 45885u), true);
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = select(vec2<bool>(arg_2, true), arg_0.b.d.a, true);
    let var_1 = -(~global0.e) & vec4<i32>(global4.x >> (~_wgslsmith_sub_u32(arg_3.x, 43687u) % 32u), _wgslsmith_add_i32(-2147483647i, -arg_0.b.c.x), 363i, -12617i);
    let var_2 = arg_0.b.c;
    global2 = true;
    let var_3 = global4.x;
    return var_0;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<f32>) -> vec3<u32> {
    var var_0 = 0u;
    let var_1 = all(!select(vec2<bool>(global1.x > arg_1.d, false), func_4(func_2(), _wgslsmith_f_op_f32(arg_0.b.a.x + 1077f), arg_0.d, u_input.a), !(arg_0.b.d.b | true)));
    var var_2 = all(!(!(!(!vec3<bool>(false, true, var_1)))));
    global2 = !(!(arg_1.b.x < arg_1.b.x));
    var_0 = ~arg_1.b.x;
    return _wgslsmith_sub_vec3_u32(arg_1.b, min(~(~arg_1.b), ~(~(~vec3<u32>(u_input.a.x, u_input.a.x, 1u)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = Struct_1(vec2<bool>(((global0.e.x | global0.c.x) >= -1i) | any(vec2<bool>(true, true)), func_4(func_2(), global1.x, !func_2().d, vec4<u32>(~42312u, ~63097u, _wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(arg_1.x, 4294967295u, 1u)), u_input.c.x)).x), true);
    var var_1 = func_2().c;
    var var_2 = i32(-1i) * -_wgslsmith_sub_i32(-(~2147483647i), func_2().b.c.x);
    var var_3 = Struct_3(~(~1u), global0.b, abs(vec3<i32>(global0.c.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.e.x, global0.c.x), global0.c.zx), -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global4.x, global4.x), global0.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-531f * func_2().b.a.x))), -(firstLeadingBit(countOneBits(global0.e)) | ~vec4<i32>(global4.x, 52673i, global4.x, global0.e.x)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2380f * 120f)))) * _wgslsmith_f_op_f32(f32(-1f) * -913f)), _wgslsmith_f_op_f32(round(-917f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 1f) * global0.d));
    return _wgslsmith_div_u32(var_3.a, _wgslsmith_clamp_u32(abs(arg_1.x >> (global0.b.x % 32u)), arg_2.x, _wgslsmith_mult_u32(~(~arg_2.x), 0u << (~arg_2.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 28>();
    let var_0 = u_input.c.yx;
    var var_1 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(true, true, true)), (true & any(vec3<bool>(true, true, false))) || !(585f >= global0.d), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))) || !all(vec4<bool>(false, false, true, false))), !(~reverseBits(var_0.x) >= 4294967295u));
    let var_2 = firstTrailingBit(vec3<u32>(func_5(global1.xy, _wgslsmith_add_vec3_u32(~global0.b, ~vec3<u32>(4294967295u, 24163u, 52905u)), _wgslsmith_mult_vec3_u32(~global0.b, func_1(Struct_4(1082f, global3[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(var_1.yy, false), var_1.x, true), Struct_3(var_0.x, global0.b, global0.c, 197f, global0.e), vec4<f32>(global0.d, global0.d, global1.x, global1.x)))), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(47181u, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 0u, 11627u), u_input.a)), ~17224u), global0.b.x));
    let var_3 = firstLeadingBit(vec2<i32>(global4.x | _wgslsmith_dot_vec3_i32(global0.e.zyw, global0.e.wxx ^ vec3<i32>(27462i, global4.x, u_input.b)), ~(~global0.e.x)));
    global4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-303f, 2147483647i, ~(~_wgslsmith_add_vec4_u32(u_input.a, u_input.a)) >> (u_input.a % vec4<u32>(32u)), var_2.x);
}

