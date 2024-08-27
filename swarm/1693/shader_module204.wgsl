struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(1i, 0i, 0i));

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(4294967295u, vec3<u32>(1u, 49628u, 28638u), Struct_1(true)), Struct_2(4294967295u, vec3<u32>(24885u, 15100u, 0u), Struct_1(false)), Struct_2(35903u, vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(false)), Struct_2(4294967295u, vec3<u32>(0u, 0u, 26774u), Struct_1(false)), Struct_2(1u, vec3<u32>(7021u, 1u, 21307u), Struct_1(false)), Struct_2(98648u, vec3<u32>(12700u, 49035u, 4294967295u), Struct_1(false)), Struct_2(1u, vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(true)), Struct_2(18614u, vec3<u32>(52108u, 1u, 101435u), Struct_1(true)), Struct_2(40396u, vec3<u32>(62538u, 4294967295u, 11137u), Struct_1(true)), Struct_2(0u, vec3<u32>(1u, 4294967295u, 0u), Struct_1(true)), Struct_2(8864u, vec3<u32>(0u, 1u, 4294967295u), Struct_1(false)), Struct_2(1u, vec3<u32>(11284u, 90090u, 1u), Struct_1(false)), Struct_2(0u, vec3<u32>(0u, 0u, 4294967295u), Struct_1(false)), Struct_2(4294967295u, vec3<u32>(0u, 0u, 0u), Struct_1(false)), Struct_2(0u, vec3<u32>(23793u, 13708u, 0u), Struct_1(false)), Struct_2(28806u, vec3<u32>(49654u, 1327u, 1u), Struct_1(true)), Struct_2(1u, vec3<u32>(108120u, 57523u, 4294967295u), Struct_1(true)), Struct_2(20727u, vec3<u32>(0u, 21436u, 1u), Struct_1(false)));

var<private> global4: f32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global3 = array<Struct_2, 18>();
    let var_0 = arg_0;
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    let var_1 = vec3<u32>(~select(0u, var_0.b.x, arg_0.a == _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, u_input.d.x), vec2<u32>(67180u, arg_0.b.x))), u_input.d.x, var_0.a);
    return Struct_1(any(select(vec4<bool>(all(vec4<bool>(var_0.c.a, true, arg_0.c.a, false)), arg_0.c.a, true, true != arg_0.c.a), !select(vec4<bool>(var_0.c.a, arg_0.c.a, false, true), vec4<bool>(var_0.c.a, var_0.c.a, true, arg_0.c.a), arg_0.c.a), !vec4<bool>(arg_0.c.a, false, false, arg_0.c.a))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    global2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(339f, global2.x, global2.x, global2.x) - vec4<f32>(global2.x, global2.x, global2.x, global2.x)))))));
    global1 = array<vec3<i32>, 2>();
    global3 = array<Struct_2, 18>();
    var var_0 = Struct_2(4294967295u, firstLeadingBit(reverseBits(_wgslsmith_mult_vec3_u32(arg_2, vec3<u32>(arg_2.x, u_input.d.x, 31282u)))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(arg_2.x, 3215u))), 33371u, 84897u) % vec3<u32>(32u)), func_2(global3[_wgslsmith_index_u32(~4294967295u, 18u)]));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(global2.x * global2.x), -1804f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f)), var_1.x, true)) - _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-118f, var_1.x)))));
}

fn func_1() -> Struct_1 {
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-507f, -1000f, _wgslsmith_f_op_f32(func_3(Struct_1(false), func_2(global3[_wgslsmith_index_u32(0u, 18u)]), u_input.d.zww)), 1778f) + vec4<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f) + _wgslsmith_f_op_f32(677f - -744f))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-293f - global2.x)) + global2.x)));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1047f, global2.x, -1000f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(trunc(-1000f)), -1765f, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 374f, -361f, global2.x) + vec4<f32>(-155f, 735f, 337f, global2.x)), vec4<f32>(global2.x, 2246f, 1475f, global2.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -928f), _wgslsmith_f_op_f32(-global2.x), global2.x, global2.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 1632f, -856f, global2.x), vec4<f32>(403f, 1426f, global2.x, global2.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(829f, global2.x, -901f, -537f), vec4<f32>(global2.x, global2.x, -159f, global2.x), vec4<bool>(true, true, false, false)))))));
    var var_0 = vec2<u32>(u_input.c.x, ~u_input.c.x);
    return Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_0.x, 19u)], u_input.a) << (vec3<u32>(1526u, 1u, 4294967295u) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(~var_0.x, 2u)]), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(global1[_wgslsmith_index_u32(12007u, 2u)], vec3<i32>(u_input.a, 1i, global0[_wgslsmith_index_u32(u_input.c.x, 19u)])), select(u_input.b.xwy, vec3<i32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.d.x, 19u)], u_input.a), vec3<bool>(true, true, true)))) < -19494i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    let var_1 = u_input.c.x;
    let var_2 = Struct_3(func_1(), u_input.e.zx);
    var var_3 = Struct_3(var_2.a, select(abs(max(vec2<i32>(var_2.b.x, 20695i), min(vec2<i32>(-2147483647i, -49169i), u_input.b.xw))), countOneBits(abs(vec2<i32>(global0[_wgslsmith_index_u32(17148u, 19u)], -2147483647i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(4294967295u, u_input.c.x)) % vec2<u32>(32u))), any(vec2<bool>(true, any(vec4<bool>(var_2.a.a, var_2.a.a, false, var_2.a.a))))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x) + vec4<f32>(global2.x, 1021f, global2.x, 443f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-752f, global2.x, 939f, -1000f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 717f, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-467f, global2.x, -986f, 219f)))))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1837f, global2.x, global2.x, -138f))))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-global2.x)), global2.x)));
    var var_5 = Struct_2(18355u, vec3<u32>(var_1, u_input.c.x, 1u), Struct_1(var_3.a.a));
    var var_6 = vec4<bool>(any(!select(!vec3<bool>(var_5.c.a, var_3.a.a, false), !vec3<bool>(var_3.a.a, true, false), select(vec3<bool>(var_3.a.a, var_3.a.a, true), vec3<bool>(var_5.c.a, false, var_3.a.a), var_5.c.a))), all(select(select(vec3<bool>(var_2.a.a, var_5.c.a, true), !vec3<bool>(true, var_2.a.a, true), select(vec3<bool>(true, true, var_2.a.a), vec3<bool>(false, false, false), vec3<bool>(true, var_2.a.a, true))), !(!vec3<bool>(var_5.c.a, true, true)), !select(vec3<bool>(false, false, var_2.a.a), vec3<bool>(var_5.c.a, var_3.a.a, false), var_2.a.a))), all(select(vec4<bool>(var_3.a.a, var_5.c.a, false, var_5.c.a), !vec4<bool>(var_2.a.a, true, true, var_5.c.a), vec4<bool>(1i == var_2.b.x, var_5.c.a, true, var_2.a.a))), !var_2.a.a);
    var_5 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 1u, ~_wgslsmith_sub_u32(var_1, _wgslsmith_div_u32(1u, 1u))), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -837f), -2699f)))));
}

