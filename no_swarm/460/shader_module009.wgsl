struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<u32> = vec3<u32>(1u, 1u, 4294967295u);

var<private> global2: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(1u, 0u, 37214u, 1u));

var<private> global3: bool = false;

var<private> global4: array<Struct_4, 13>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = -u_input.b.zz;
    var var_1 = max(~(~_wgslsmith_mult_i32(-2147483647i, var_0.x)), ~var_0.x << (15099u % 32u));
    let var_2 = Struct_3(select(select(select(select(vec4<bool>(false, false, false, arg_0.a), vec4<bool>(arg_0.b.c.a, false, arg_0.a, false), vec4<bool>(arg_0.b.b.a, true, true, arg_0.b.c.a)), select(vec4<bool>(true, arg_0.c.a, arg_0.a, true), vec4<bool>(arg_0.c.a, false, false, true), vec4<bool>(true, arg_0.b.c.a, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(true, false, arg_0.a, arg_0.b.c.a)), arg_0.a, arg_0.c.a, true), false), !(!(!vec4<bool>(true, arg_0.b.c.a, true, false))), select(!vec4<bool>(false, arg_0.b.b.a, arg_0.c.a, arg_0.c.a), !select(vec4<bool>(true, true, false, arg_0.a), vec4<bool>(arg_0.c.a, arg_0.a, arg_0.b.b.a, true), arg_0.a), !any(vec2<bool>(arg_0.a, true)))));
    var var_3 = vec2<f32>(220f, _wgslsmith_f_op_f32(min(-869f, 370f)));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b.c.d.x - -1385f)));
    return vec3<u32>(global1.x, _wgslsmith_div_u32(9823u, ~_wgslsmith_clamp_u32(5555u, global1.x, 23748u) << (1u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(min(_wgslsmith_add_u32(arg_1.x, global1.x), arg_1.x & 52834u), ~(~4294967295u)), max(u_input.c, u_input.c)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -arg_1.e;
    let var_1 = -852f;
    let var_2 = u_input.c.x;
    let var_3 = vec2<i32>(u_input.a.x, ~0i | (u_input.a.x | _wgslsmith_sub_i32(arg_1.e, 1i)));
    var var_4 = vec3<u32>(~1u, u_input.c.x, 0u) ^ select(~firstTrailingBit(vec3<u32>(global1.x, var_2, 13979u)) & abs(vec3<u32>(global1.x, global1.x, global1.x) & vec3<u32>(var_2, var_2, 78758u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c.x, var_2, global1.x), func_3(Struct_4(false, Struct_2(arg_1.e, Struct_1(arg_1.a, -6980i, vec3<f32>(-1476f, 1579f, arg_1.d.x), vec2<f32>(arg_1.d.x, var_1), 1i), Struct_1(true, arg_1.e, arg_1.c, vec2<f32>(arg_1.d.x, arg_1.c.x), 50228i)), arg_1, arg_1.c.yy), max(vec3<u32>(4294967295u, global1.x, 44852u), vec3<u32>(global1.x, global1.x, 0u)))), arg_1.a);
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_4(arg_1.b.c.a, Struct_2(firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_1.c.b, u_input.a.x), arg_1.c.e)), arg_1.b.c, Struct_1(false, arg_1.c.e, arg_1.b.c.c, arg_1.b.b.c.yy, min(-u_input.b.x, arg_1.b.c.b))), arg_1.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.b.c.x - 725f)), _wgslsmith_f_op_f32(step(-220f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1745f) * arg_1.b.b.d.x)))));
    var var_1 = _wgslsmith_add_i32(i32(-1i) * -firstTrailingBit(firstTrailingBit(arg_1.b.a)), ~var_0.c.b);
    var var_2 = Struct_2(-1i, func_2(_wgslsmith_mod_vec2_i32(u_input.b.xx, u_input.b.xz) | u_input.b.yy, arg_1.c), var_0.b.c);
    let var_3 = !var_0.c.a;
    var_0 = arg_1;
    return Struct_3(select(vec4<bool>(var_2.c.d.x <= _wgslsmith_f_op_f32(1178f + 1200f), func_2(u_input.b.zx, var_0.c).a, !(!var_3), arg_1.c.b != var_2.b.e), !(!vec4<bool>(false, var_0.b.b.a, var_0.a, var_3)), select(select(!vec4<bool>(arg_1.b.c.a, true, var_2.c.a, arg_1.c.a), !vec4<bool>(var_0.c.a, false, true, false), select(vec4<bool>(var_3, true, var_0.a, var_0.b.b.a), vec4<bool>(var_2.c.a, var_3, var_0.c.a, var_2.b.a), vec4<bool>(false, true, false, arg_1.a))), vec4<bool>(!var_3, var_3 & false, any(vec3<bool>(var_2.b.a, true, false)), all(vec2<bool>(var_2.b.a, var_3))), true | func_2(vec2<i32>(u_input.a.x, 0i), var_0.b.c).a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_sub_i32(u_input.b.x, 2147483647i & ~(~u_input.b.x)), global4[_wgslsmith_index_u32(global1.x, 13u)], 1051f);
    var var_1 = !any(vec4<bool>(true, var_0.a.x, 1u == global1.x, select(false, true, var_0.a.x))) && var_0.a.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(658f, 508f, -198f, -1375f)))));
    let var_3 = var_0.a.x;
    var_2 = vec4<f32>(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -816f))))), var_2.x, 794f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -861f), var_2.x)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-520f, 253f, var_2.x, 1171f) + vec4<f32>(var_2.x, var_2.x, 922f, 685f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-960f, 1000f, 543f, var_2.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_f_op_f32(-var_2.x), -388f, var_2.x)))));
    global3 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(firstTrailingBit(global1.x), global1.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 51021u, global1.x), vec3<u32>(global1.x, u_input.c.x, 0u) << (vec3<u32>(u_input.c.x, global1.x, 58549u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(trunc(func_2(reverseBits(u_input.b.yy), Struct_1(true, -u_input.b.x, vec3<f32>(var_2.x, var_2.x, 765f), vec2<f32>(654f, var_2.x), -1i)).d.x)));
}

