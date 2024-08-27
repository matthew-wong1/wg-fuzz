struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(-23651i));

var<private> global2: Struct_4;

var<private> global3: bool;

var<private> global4: f32 = 383f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    var var_0 = global2.c.b;
    global0 = 16181u;
    global1 = array<Struct_2, 1>();
    let var_1 = Struct_1(global2.a, select(global2.c.b, global2.c.b, true), any(select(vec4<bool>(!global2.a.x, global2.c.c | global2.c.a.x, any(vec4<bool>(true, true, true, true)), all(global2.a.wx)), !global2.a, vec4<bool>(true, !global2.a.x, true, global2.c.d.x))), global2.c.d);
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, ~(~1u), var_0.x, ~(~86185u)), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, 4294967295u, 51872u, global2.c.b.x), vec4<u32>(0u, 57986u, 4294967295u, 4294967295u)), select(vec4<u32>(var_0.x, var_0.x, global2.c.b.x, u_input.b), vec4<u32>(var_1.b.x, 0u, 96533u, u_input.d.x), vec4<bool>(global2.a.x, true, global2.a.x, true))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = select(vec3<bool>(true & !arg_1.a.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_1.b.x, arg_0, global2.d.x, 41679u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b, global2.c.b.x, 1u), vec4<u32>(arg_1.b.x, arg_0, 18943u, 4294967295u))) <= max(_wgslsmith_clamp_u32(global2.c.b.x, 1u, 15769u), countOneBits(12883u)), global2.a.x), select(select(arg_1.a.ywz, arg_1.d.ywz, !select(arg_1.d.wwx, vec3<bool>(true, true, false), arg_1.a.www)), global2.a.zxz, arg_1.d.wzw), !select(select(arg_1.a.zxy, vec3<bool>(global2.c.c, false, false), vec3<bool>(true, global2.a.x, true)), arg_1.a.xzw, !select(vec3<bool>(arg_1.c, true, global2.a.x), global2.c.d.xyw, global2.c.a.yyy)));
    global3 = arg_1.c;
    global3 = !all(vec2<bool>(false, arg_1.c));
    let var_1 = _wgslsmith_div_u32(~u_input.b, ~arg_0);
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(10894u, 1u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~arg_0, ~0u), ~u_input.e, countOneBits(4294967295u), global2.d.x), (vec4<u32>(arg_0, 13899u, 1u, 0u) & ~vec4<u32>(1205u, 4294967295u, 9985u, arg_0)) | (vec4<u32>(0u, global2.d.x, 23404u, var_1) & firstTrailingBit(vec4<u32>(u_input.e, 13046u, 4294967295u, 4294967295u)))), 1u)]);
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = Struct_2(~reverseBits(~1i));
    global2 = Struct_4(vec4<bool>(func_3(u_input.b, global2.c), global2.a.x, (-60308i >> ((15439u & global2.d.x) % 32u)) < arg_0.a, true & (global2.c.a.x == (u_input.b < 75135u))), Struct_2(abs(global2.b.a)), Struct_1(!vec4<bool>(true, global2.c.d.x, global2.a.x, select(false, global2.c.d.x, global2.c.c)), ~(~(vec3<u32>(0u, 4294967295u, global2.c.b.x) | vec3<u32>(29246u, global2.d.x, 9264u))), all(global2.c.d), global2.c.d), u_input.d);
    global3 = all(!select(select(!global2.a.xzx, !vec3<bool>(global2.c.d.x, true, false), true), !(!global2.a.wzw), true));
    let var_1 = Struct_4(select(select(select(select(global2.a, global2.c.d, true), !vec4<bool>(global2.c.a.x, false, global2.a.x, global2.c.d.x), global2.a), select(!vec4<bool>(global2.a.x, global2.c.a.x, global2.a.x, global2.a.x), !global2.c.d, !global2.c.d.x), !vec4<bool>(global2.c.c, global2.a.x, global2.a.x, global2.a.x)), vec4<bool>(!(!global2.c.a.x), global2.a.x, true, true), select(!(!vec4<bool>(false, global2.c.a.x, global2.a.x, false)), select(select(vec4<bool>(false, true, global2.c.d.x, true), global2.c.d, false), !global2.c.d, global2.a), -582f <= _wgslsmith_f_op_f32(select(392f, 1603f, true)))), Struct_2(-59940i & (i32(-1i) * -global2.b.a)), Struct_1(!select(select(global2.c.d, vec4<bool>(global2.a.x, global2.a.x, true, false), global2.c.a), global2.a, true), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, u_input.b, u_input.b), 100158u), 1u, 22775u & _wgslsmith_add_u32(global2.d.x, u_input.b)), !any(!vec4<bool>(global2.a.x, global2.a.x, global2.c.a.x, global2.a.x)), vec4<bool>(true || any(vec3<bool>(true, global2.c.d.x, false)), all(select(vec2<bool>(false, false), global2.c.d.wx, global2.a.yx)), true, global2.c.a.x)), abs(global2.c.b.yy));
    return Struct_1(!vec4<bool>(!(!global2.c.d.x), !(!global2.c.c), ~u_input.b == global2.c.b.x, global2.a.x), global2.c.b, global2.c.c, select(!vec4<bool>(true, 2147483647i == var_1.b.a, any(var_1.c.d.wxx), true), !vec4<bool>(all(vec4<bool>(true, global2.a.x, global2.c.c, false)), global2.c.d.x, global2.a.x, true), var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b;
    let var_1 = ~(~func_1(-1884f) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.c.b.x, u_input.d.x, u_input.b, 38736u), vec4<u32>(global2.d.x, 4294967295u, u_input.b, 0u), vec4<u32>(u_input.e, u_input.e, global2.d.x, global2.d.x))) ^ _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.e, global2.c.b.x, u_input.e, 97713u) >> (~vec4<u32>(68228u, u_input.d.x, global2.c.b.x, global2.c.b.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(8187u, 22629u, 7381u), global2.c.b), _wgslsmith_div_vec3_u32(global2.c.b, global2.c.b)), ~u_input.d.x, reverseBits(u_input.d.x) & 43566u, ~_wgslsmith_add_u32(u_input.e, 18621u)), vec4<u32>(1u, ~_wgslsmith_sub_u32(36173u, u_input.d.x), 52934u, u_input.e));
    var var_2 = global2.c;
    var var_3 = false;
    var_2 = func_2(Struct_2(~(-(~44065i))), i32(-1i) * -reverseBits(abs(1i)));
    global0 = _wgslsmith_add_u32(~(42395u << (_wgslsmith_dot_vec2_u32(var_2.b.yz, vec2<u32>(var_1.x, var_1.x) >> (vec2<u32>(1302u, var_1.x) % vec2<u32>(32u))) % 32u)), ~(~firstLeadingBit(var_2.b.x & 1u)));
    let var_4 = vec4<i32>(~var_0.a, -16541i, 46346i, u_input.c.x);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f + -1378f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-744f)) * _wgslsmith_f_op_f32(ceil(-2051f)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.xwz << (reverseBits(select(var_2.b, vec3<u32>(global2.d.x, 1u, 4294967295u), vec3<bool>(global2.a.x, global2.a.x, global2.a.x))) % vec3<u32>(32u))), func_1(1186f).yy << (_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), abs(~vec2<u32>(global2.c.b.x, 2967u))) % vec2<u32>(32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~(~1u), var_1.x, 67574u), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.c.b.x, _wgslsmith_mod_u32(4294967295u, global2.c.b.x), var_2.b.x, _wgslsmith_mod_u32(var_1.x, 0u)), ~vec4<u32>(4294967295u, 0u, 1u, var_2.b.x) << (~vec4<u32>(u_input.b, 19194u, 23267u, 1u) % vec4<u32>(32u)))), -_wgslsmith_add_i32(~u_input.c.x, -1i));
}

