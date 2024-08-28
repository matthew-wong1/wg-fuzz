struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(19920i), Struct_2(12827i));

var<private> global2: vec3<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> u32 {
    let var_0 = select(arg_0.c, ~(~abs(arg_1)), false);
    let var_1 = Struct_1(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))), select(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, false), false), select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true), true), vec4<i32>(arg_0.c, arg_2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(70526i, 1i, -17991i, u_input.a) ^ vec4<i32>(0i, 2147483647i, -23264i, var_0), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 0i, arg_2.a, 992i), vec4<i32>(arg_0.c, 2147483647i, arg_0.a.a, -1i))), -arg_1) ^ countOneBits(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, -2147483647i, 15271i, arg_1)), max(vec4<i32>(-2114i, arg_0.c, 0i, -1i), vec4<i32>(arg_1, arg_1, 2147483647i, arg_1)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(arg_0.d.ywz)))));
    let var_3 = select(var_1.b, select(var_1.a.yw, !select(var_1.b, var_1.a.ww, vec2<bool>(true, true)), var_1.b.x), select(var_1.b, !var_1.a.yw, false));
    var var_4 = select(vec3<bool>(!(!(true | var_3.x)), arg_0.d.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-532f)) - _wgslsmith_f_op_f32(trunc(var_2.x))), any(vec4<bool>(var_3.x, true, true, false))), select(!var_1.a.zxy, select(select(var_1.a.zyx, !vec3<bool>(var_3.x, true, false), var_1.a.zxy), select(!var_1.a.xwx, vec3<bool>(var_1.b.x, var_1.a.x, false), var_3.x), var_1.a.wzx), var_1.a.wyz), select(vec3<bool>(all(!var_1.a), any(select(vec4<bool>(var_3.x, false, var_3.x, var_3.x), vec4<bool>(true, true, false, false), vec4<bool>(false, var_3.x, var_1.a.x, false))), select(var_3.x, false, true) | select(var_3.x, false, false)), vec3<bool>(_wgslsmith_f_op_f32(-arg_0.d.x) > _wgslsmith_f_op_f32(min(arg_0.d.x, var_2.x)), true, any(var_1.a.zyz)), !select(!var_1.a.xxz, !vec3<bool>(var_1.a.x, var_3.x, var_1.b.x), true)));
    return _wgslsmith_mult_u32(countOneBits(~(~abs(5456u))), 1u);
}

fn func_2(arg_0: bool) -> Struct_3 {
    global1 = array<Struct_2, 2>();
    var var_0 = Struct_4(Struct_3(global1[_wgslsmith_index_u32(firstLeadingBit(52373u >> (firstTrailingBit(1u) % 32u)), 2u)], global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(44243u, 38391u, 1u), vec3<u32>(1u, 99040u, 1u)), 2u)], firstLeadingBit(max(-1i, 1i)), vec4<f32>(global2.x, _wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -414f))), ~vec2<u32>(_wgslsmith_mod_u32(1u, ~56181u), 1u));
    global0 = ~(func_3(var_0.a, -var_0.a.c, var_0.a.a) & 11616u);
    return Struct_3(Struct_2(-2147483647i), Struct_2(-_wgslsmith_dot_vec2_i32(-u_input.b, max(u_input.b, vec2<i32>(25323i, var_0.a.c)))), u_input.a, var_0.a.d);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = ~((_wgslsmith_mult_vec4_u32(vec4<u32>(76065u, 14080u, 4294967295u, arg_1), vec4<u32>(66628u, arg_0, 56387u, 0u)) << (min(vec4<u32>(arg_0, 685u, arg_0, 41491u), vec4<u32>(arg_0, 23224u, arg_0, 22239u)) % vec4<u32>(32u))) << (~vec4<u32>(arg_1, 4294967295u, arg_0, 0u) % vec4<u32>(32u))) << (vec4<u32>(~(~(~1u)), 8899u, select(arg_1, arg_0 >> (0u % 32u), global2.x >= -570f) & ~(~31158u), arg_1) % vec4<u32>(32u));
    global2 = vec3<f32>(global2.x, 847f, global2.x);
    var var_1 = -1048f;
    let var_2 = func_2(true);
    let var_3 = _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, -599f)) - -399f));
    return vec2<bool>(all(vec3<bool>((arg_1 | var_0.x) >= arg_1, (1521f >= var_3) != true, all(vec3<bool>(true, true, true)))), var_2.d.x == global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), true)), func_1(~55818u, reverseBits(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) - global2.x), countOneBits(abs(vec4<i32>(u_input.a, u_input.b.x, -1i, u_input.b.x)))), ~select(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 15598i, u_input.b.x, u_input.a), vec4<i32>(101218i, 0i, u_input.b.x, 28320i), vec4<i32>(-8994i, u_input.a, u_input.a, 21395i)), vec4<i32>(firstTrailingBit(u_input.b.x), -17361i, u_input.a, u_input.a), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_1(select(vec4<bool>(false, var_0.a.x, true | !var_0.a.x, var_0.a.x), select(var_0.a, select(vec4<bool>(var_0.b.x, false, true, var_0.b.x), vec4<bool>(var_0.a.x, var_0.a.x, false, false), !var_0.a), vec4<bool>(false, true, var_0.b.x, true)), var_0.a), !func_1(~_wgslsmith_clamp_u32(0u, 0u, 0u), ~42232u, global2.x, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 0i, u_input.a, var_0.c.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 12983i, 14229i, var_0.c.x), vec4<i32>(-2147483647i, var_0.c.x, 2147483647i, var_0.c.x)))), var_0.c);
    let var_2 = true;
    var var_3 = select(!(!vec2<bool>(true, var_0.a.x || true)), var_1.b, true);
    let var_4 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~abs(~vec4<u32>(1u, 4294967295u, 1u, 33647u)), vec4<u32>(1u, 1u, 1u, 1u) ^ vec4<u32>(4294967295u, 1u, func_3(Struct_3(Struct_2(18347i), Struct_2(u_input.a), -22929i, vec4<f32>(global2.x, global2.x, var_4, global2.x)), u_input.a, global1[_wgslsmith_index_u32(35436u, 2u)]), 1u)), vec4<i32>(abs(_wgslsmith_add_i32(-1i, ~var_0.c.x)), -2147483647i, ~var_0.c.x, 2147483647i), ~(-var_1.c) & _wgslsmith_clamp_vec4_i32(reverseBits(var_1.c), vec4<i32>(~(-2147483647i), u_input.a | -1i, _wgslsmith_mult_i32(-16252i, -6485i), max(1i, -2147483647i)), _wgslsmith_mult_vec4_i32(var_1.c, _wgslsmith_sub_vec4_i32(var_1.c, var_1.c))), vec3<i32>(-16299i, select(-17294i, -2147483647i, (true == var_2) && true), _wgslsmith_dot_vec3_i32(-(~var_0.c.wzz), vec3<i32>(0i, u_input.b.x, var_0.c.x) | firstLeadingBit(var_1.c.zyw))));
}

