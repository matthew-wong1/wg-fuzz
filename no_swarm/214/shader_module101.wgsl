struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
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

var<private> global0: array<vec2<u32>, 15>;

var<private> global1: bool;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec4<u32>(1u, 22964u, 22744u, 28405u), 2147483647i, Struct_1(1u, true, vec2<u32>(0u, 37471u), false)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec4<u32> {
    global1 = !any(vec2<bool>(!arg_1.d, true)) | false;
    var var_0 = Struct_3(Struct_1(1u, all(vec2<bool>(true, arg_1.b)), vec2<u32>(17225u, ~arg_1.c.x), !(!(arg_2 > arg_2))), arg_1, Struct_2(vec4<u32>(arg_0.x >> (arg_0.x % 32u), firstLeadingBit(29687u) ^ _wgslsmith_add_u32(63226u, arg_1.a), 0u & max(arg_1.a, 97280u), 21982u), select(-2147483647i, u_input.b.x, arg_1.b) >> ((select(arg_1.c.x, arg_1.a, arg_1.b) | 23196u) % 32u), arg_1));
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_2))))))));
    var var_3 = var_0.c.c;
    return ~vec4<u32>(~arg_1.a, 20884u, var_1.a, _wgslsmith_dot_vec4_u32(var_0.c.a, countOneBits(firstLeadingBit(var_0.c.a))));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x < u_input.a.x;
    global2 = array<Struct_2, 1>();
    var var_1 = Struct_2(vec4<u32>(10726u, _wgslsmith_div_u32(~9991u, select(2724u, u_input.c.x, true)), 0u, ~(49937u << (1u % 32u))) ^ func_3(select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.c, !var_0), Struct_1(1u, !var_0, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.a.x, 97151u), 15u)], true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(418f)))), u_input.b.x), _wgslsmith_div_i32(1i, ~((i32(-1i) * -13224i) >> (_wgslsmith_add_u32(u_input.c.x, u_input.c.x) % 32u))), Struct_1(28354u, true, ~(global0[_wgslsmith_index_u32(u_input.a.x << (1u % 32u), 15u)] << (global0[_wgslsmith_index_u32(~0u, 15u)] % vec2<u32>(32u))), false));
    var var_2 = var_1.c;
    global1 = false;
    return var_1.c;
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3) -> bool {
    let var_0 = Struct_3(Struct_1(~(~15136u), true, abs(arg_2.b.c), any(vec2<bool>(true, true))), func_2(), Struct_2(vec4<u32>(arg_2.b.c.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, arg_2.b.a)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, 0u, 20999u), arg_2.c.a), 17784u), _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, arg_1), arg_2.a.a)), arg_0.x, func_2()));
    let var_1 = vec4<bool>(((var_0.b.d & any(vec4<bool>(arg_2.b.d, true, arg_2.c.c.d, false))) | false) | !(!any(vec4<bool>(arg_2.c.c.d, true, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(262f, -1000f))))) >= _wgslsmith_f_op_f32(-910f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1158f)) * _wgslsmith_f_op_f32(ceil(-730f)))), true, func_2().d != all(select(select(vec4<bool>(false, var_0.c.c.b, var_0.c.c.b, false), vec4<bool>(true, false, arg_2.c.c.b, true), vec4<bool>(false, arg_2.b.b, var_0.a.b, var_0.a.d)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, arg_2.a.b, var_0.c.c.d, false), vec4<bool>(false, arg_2.b.b, arg_2.c.c.b, var_0.a.d)), !vec4<bool>(var_0.a.b, var_0.a.d, arg_2.b.b, true))));
    let var_2 = var_0.a.b;
    var var_3 = var_1.x;
    var var_4 = var_1.wy;
    return true && (var_0.b.c.x >= (0u << (u_input.a.x % 32u)));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> bool {
    global0 = array<vec2<u32>, 15>();
    let var_0 = _wgslsmith_f_op_f32(abs(arg_1));
    let var_1 = ~(-61063i) ^ arg_0.b;
    let var_2 = u_input.a >> (~(~arg_0.a.zww) % vec3<u32>(32u));
    var var_3 = -277f;
    return any(vec4<bool>(true, true, select(false, true, all(vec3<bool>(true, arg_0.c.d, arg_0.c.b))), func_4(_wgslsmith_mult_vec3_i32(reverseBits(u_input.b), _wgslsmith_mult_vec3_i32(u_input.b, u_input.b)), var_2.x << ((4294967295u << (arg_0.a.x % 32u)) % 32u), Struct_3(func_2(), Struct_1(1u, arg_0.c.d, global0[_wgslsmith_index_u32(var_2.x, 15u)], arg_0.c.d), global2[_wgslsmith_index_u32(~42624u, 1u)]))));
}

fn func_5(arg_0: bool, arg_1: i32) -> StorageBuffer {
    global2 = array<Struct_2, 1>();
    let var_0 = ~func_3(vec2<u32>(u_input.a.x, ~(~111639u)), Struct_1(1u, true, _wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(~1u, 15u)]), arg_1 < _wgslsmith_mult_i32(1i, u_input.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -416f), -1547f)))), -1i).wyy;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -137f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(838f, 265f, arg_0)) + _wgslsmith_f_op_f32(f32(-1f) * -403f))))) * _wgslsmith_div_f32(-924f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 996f) - 1f) + _wgslsmith_f_op_f32(f32(-1f) * -232f))));
    var var_2 = Struct_3(func_2(), func_2(), Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(49482u, 53822u, 0u, u_input.a.x) | firstTrailingBit(vec4<u32>(0u, 1u, var_0.x, 4294967295u)), vec4<u32>(48905u, u_input.c.x, 1u, ~91427u)), u_input.b.x, Struct_1(var_0.x, arg_0, abs(vec2<u32>(u_input.c.x, u_input.c.x)), !func_4(vec3<i32>(u_input.b.x, arg_1, u_input.b.x), var_0.x, Struct_3(Struct_1(3146u, false, vec2<u32>(1u, u_input.a.x), false), Struct_1(4294967295u, false, u_input.a.xx, arg_0), Struct_2(vec4<u32>(44u, 0u, u_input.a.x, u_input.a.x), arg_1, Struct_1(75446u, false, vec2<u32>(u_input.c.x, 79788u), arg_0)))))));
    let var_3 = Struct_3(func_2(), Struct_1(_wgslsmith_sub_u32(48567u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(22863u, var_2.c.c.c.x), 37855u)), any(select(!vec3<bool>(true, arg_0, arg_0), !vec3<bool>(var_2.b.d, arg_0, false), vec3<bool>(var_2.b.d, var_2.a.b, true))), vec2<u32>(~var_0.x, var_0.x << (var_2.c.a.x % 32u)) << (select(~var_0.zy, var_0.zz, true) % vec2<u32>(32u)), true), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_0.x, var_2.c.c.c.x), 1u)]);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 + var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(589f + -653f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1, 780f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(_wgslsmith_mult_u32(~u_input.a.x, max(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~1u)), u_input.c.x);
    let var_1 = ~(-u_input.b.x);
    let x = u_input.a;
    s_output = func_5(func_1(global2[_wgslsmith_index_u32(32275u, 1u)], _wgslsmith_f_op_f32(f32(-1f) * -567f)) == all(vec4<bool>(true, true, true, true)), var_1);
}

