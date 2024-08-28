struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 14>;

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<u32>(1u, 0u, 4294967295u, 79336u), true, vec3<i32>(14975i, -10400i, 44906i)), Struct_2(vec4<u32>(22936u, 23741u, 1u, 11448u), false, vec3<i32>(38104i, 1i, 1i)), Struct_2(vec4<u32>(20118u, 4294967295u, 4294967295u, 60070u), true, vec3<i32>(-56269i, i32(-2147483648), -1679i)), Struct_2(vec4<u32>(4294967295u, 0u, 73576u, 1u), true, vec3<i32>(1i, 0i, -21769i)), Struct_2(vec4<u32>(0u, 0u, 28044u, 59492u), false, vec3<i32>(-39314i, 7588i, -13077i)), Struct_2(vec4<u32>(2493u, 4294967295u, 18401u, 1u), false, vec3<i32>(2147483647i, -1i, 1i)), Struct_2(vec4<u32>(1u, 4294967295u, 0u, 60194u), false, vec3<i32>(i32(-2147483648), 0i, -1i)), Struct_2(vec4<u32>(28470u, 82239u, 0u, 36597u), true, vec3<i32>(i32(-2147483648), -1i, 2147483647i)), Struct_2(vec4<u32>(4294967295u, 47066u, 84037u, 4294967295u), true, vec3<i32>(0i, 2738i, -1i)), Struct_2(vec4<u32>(82246u, 30277u, 14067u, 4294967295u), true, vec3<i32>(20436i, 11155i, 2472i)), Struct_2(vec4<u32>(6907u, 1u, 1u, 1u), false, vec3<i32>(-35296i, 1i, 0i)), Struct_2(vec4<u32>(0u, 4294967295u, 41902u, 0u), false, vec3<i32>(i32(-2147483648), 1605i, -30463i)), Struct_2(vec4<u32>(1u, 7280u, 0u, 4294967295u), true, vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i)), Struct_2(vec4<u32>(42285u, 5599u, 0u, 43307u), false, vec3<i32>(-23775i, 16065i, -1i)), Struct_2(vec4<u32>(0u, 0u, 0u, 1u), true, vec3<i32>(1i, 40003i, 5450i)), Struct_2(vec4<u32>(1u, 0u, 0u, 20001u), true, vec3<i32>(0i, -1i, -29901i)), Struct_2(vec4<u32>(72586u, 4294967295u, 59117u, 15297u), false, vec3<i32>(-28279i, 1i, -1i)), Struct_2(vec4<u32>(23890u, 22938u, 35791u, 1u), true, vec3<i32>(-40390i, 1i, 17796i)), Struct_2(vec4<u32>(53483u, 42671u, 0u, 25387u), false, vec3<i32>(i32(-2147483648), 19041i, 63084i)), Struct_2(vec4<u32>(54945u, 26370u, 4294967295u, 2635u), true, vec3<i32>(1i, 0i, 31441i)), Struct_2(vec4<u32>(1u, 11332u, 0u, 4294967295u), true, vec3<i32>(-7422i, 851i, -12881i)), Struct_2(vec4<u32>(0u, 15832u, 34340u, 22492u), true, vec3<i32>(i32(-2147483648), 33847i, 0i)), Struct_2(vec4<u32>(4294967295u, 1u, 0u, 10516u), false, vec3<i32>(i32(-2147483648), -6777i, 48817i)));

var<private> global3: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = select(vec3<bool>(true, !(_wgslsmith_mult_i32(u_input.c, -2147483647i) < firstTrailingBit(7311i)), !any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))), vec3<bool>(false, all(vec4<bool>(true, true, true, true)), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    global2 = array<Struct_2, 23>();
    global2 = array<Struct_2, 23>();
    let var_1 = var_0;
    let var_2 = select(~(~(-vec2<i32>(2147483647i, -26726i))), countOneBits(-(vec2<i32>(-48564i, u_input.c) ^ vec2<i32>(u_input.c, u_input.c))), !(!var_1.yy)) ^ firstLeadingBit(vec2<i32>(u_input.c, -u_input.c));
    return u_input.c;
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0;
    global2 = array<Struct_2, 23>();
    let var_1 = _wgslsmith_div_f32(-892f, -251f);
    var var_2 = arg_0.a.zwx;
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>((-var_0.c.x ^ _wgslsmith_mult_i32(-2147483647i, arg_0.c.x)) << (max(firstLeadingBit(u_input.d), 4294967295u) % 32u), _wgslsmith_clamp_i32(func_3(_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_f_op_f32(var_1 - -1200f)), -reverseBits(8989i), ~(-2147483647i))), ~vec2<i32>(-1i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.c.x, 294i, var_0.c.x), vec4<i32>(u_input.c, u_input.c, u_input.c, -56343i)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f)));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(Struct_2(~vec4<u32>(global1[_wgslsmith_index_u32(min(u_input.a.x, 4294967295u), 14u)], 1u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.yx), 14u)], _wgslsmith_dot_vec3_u32(u_input.a.wwy, u_input.a.xwy)), any(vec3<bool>(true, true, true)), vec3<i32>(1i, u_input.c, u_input.c)), reverseBits(u_input.c), select(select(all(vec4<bool>(false, false, true, false)), any(vec4<bool>(false, false, false, true)), true), true, true && all(vec2<bool>(true, false))) && false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(83858u, 14u)], 23u)])))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-379f, -861f, true)), _wgslsmith_f_op_f32(sign(1025f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-2894f)))))), true);
    let var_1 = var_0;
    global1 = array<u32, 14>();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1419f;
    global2 = array<Struct_2, 23>();
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1783f, -793f, -122f)))))))));
    let var_1 = -u_input.c;
    var var_2 = func_1();
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yz, _wgslsmith_f_op_vec2_f32(-var_0.yz));
}

