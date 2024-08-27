struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -399f;

var<private> global1: array<Struct_2, 14>;

var<private> global2: array<f32, 25> = array<f32, 25>(-1000f, 1003f, 666f, 507f, 1627f, -1687f, -497f, 933f, -1207f, -1696f, 1201f, 1528f, 737f, 834f, 194f, -775f, -1493f, 2201f, -743f, 1518f, -999f, 329f, -572f, -225f, 1107f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(6958u, 14u)];
    let var_1 = Struct_1(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, true), true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), true)), _wgslsmith_sub_i32(-2147483647i, u_input.b), ((select(vec4<i32>(-1692i, u_input.a, 0i, 1i), vec4<i32>(2147483647i, 12985i, var_0.a, 13507i), true) & abs(vec4<i32>(-1i, u_input.a, -48857i, var_0.a))) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 5204u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))) >> (~(~(~vec4<u32>(26272u, 7992u, 0u, 1u))) % vec4<u32>(32u)), vec2<bool>(true, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(168f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~1u, 25u)]))));
    let var_2 = abs(~(~vec4<u32>(1u, 1u, 1u, 1u)));
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-513f + 416f), global2[_wgslsmith_index_u32(52733u, 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -339f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.e.x * global2[_wgslsmith_index_u32(63352u, 25u)]), _wgslsmith_f_op_f32(f32(-1f) * -902f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_2.x, 25u)] * var_1.e.x) - global2[_wgslsmith_index_u32(1u, 25u)]) * 542f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-435f - 1443f) * _wgslsmith_f_op_f32(-815f + var_1.e.x))))));
    global1 = array<Struct_2, 14>();
    return Struct_2(-31432i);
}

fn func_1() -> Struct_2 {
    global2 = array<f32, 25>();
    return func_2();
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: Struct_2) -> bool {
    var var_0 = arg_2.a.c;
    var var_1 = reverseBits(vec4<u32>(51562u, 12272u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, abs(arg_0.b)), ~vec2<u32>(arg_0.b, 4294967295u) & _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_0.b), vec2<u32>(arg_0.b, arg_0.b))), 4294967295u));
    let var_2 = arg_0;
    let var_3 = vec3<bool>(arg_2.a.d.x, any(!(!vec3<bool>(arg_2.a.d.x, arg_2.a.a.x, false))), any(vec2<bool>(any(!vec3<bool>(arg_2.a.a.x, false, false)), select(all(vec4<bool>(arg_2.a.d.x, false, false, arg_2.a.a.x)), arg_2.a.a.x, arg_2.a.d.x))));
    let var_4 = arg_2.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(710f, _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(26697u, 25u)], 206f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.a.e.x)) * arg_2.a.e.x))), _wgslsmith_f_op_f32(abs(var_4.e.x))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.a.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.a.e.x)) - _wgslsmith_f_op_f32(arg_2.a.e.x + -786f)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_5) -> u32 {
    global0 = -295f;
    var var_0 = !select(arg_2.a.d, select(vec2<bool>(true, true), select(vec2<bool>(arg_1.a, arg_2.a.d.x), arg_2.a.d, all(vec4<bool>(false, arg_2.a.d.x, false, arg_2.a.d.x))), select(select(arg_2.a.d, vec2<bool>(true, false), arg_2.a.d), arg_2.a.d, true)), arg_2.a.a);
    let var_1 = firstLeadingBit(min(~countOneBits(vec4<u32>(arg_0.b, arg_0.b, 32424u, arg_0.b) | vec4<u32>(98360u, 0u, 8032u, arg_0.b)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(0u, 28569u, 30900u, arg_0.b), reverseBits(vec4<u32>(arg_0.b, 4294967295u, arg_0.b, arg_0.b)), any(vec3<bool>(false, arg_2.a.d.x, true))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 30118u, arg_0.b), vec3<u32>(91426u, 1u, arg_0.b)), arg_0.b, arg_0.b, arg_0.b))));
    var var_2 = -776f;
    var var_3 = var_0.x;
    return 1u;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: bool) -> Struct_4 {
    let var_0 = arg_1.a;
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-213f, global2[_wgslsmith_index_u32(arg_0.x, 25u)]), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(arg_0.x, 25u)], -103f, false)))) * _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(arg_0.x, 25u)]))) - global2[_wgslsmith_index_u32(min(~arg_0.x, func_4(Struct_3(Struct_2(27065i), 49476u), Struct_4(false), Struct_5(Struct_1(vec2<bool>(true, false), var_0.a, vec4<i32>(993i, var_0.a, var_0.a, u_input.b), vec2<bool>(false, arg_2), vec2<f32>(global2[_wgslsmith_index_u32(arg_1.b, 25u)], global2[_wgslsmith_index_u32(87916u, 25u)]))))), 25u)])));
    var var_1 = Struct_4(false);
    let var_2 = ~(arg_1.b ^ 0u);
    var var_3 = select(vec4<bool>(any(select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, var_1.a), true), vec2<bool>(true, true))), all(!select(vec3<bool>(true, true, true), vec3<bool>(false, arg_2, var_1.a), false)), arg_2, arg_2 || !(true | var_1.a)), vec4<bool>(true, true, var_1.a, false), var_1.a);
    return Struct_4(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<i32>(~(-1i), u_input.b, u_input.b));
    var var_1 = func_5(vec4<u32>(_wgslsmith_div_u32(abs(1u), _wgslsmith_clamp_u32(1u, 4294967295u, 17615u) & 415u), select(abs(93759u), _wgslsmith_dot_vec3_u32(vec3<u32>(53236u, 0u, 25714u), vec3<u32>(1u, 1u, 4294967295u)), true) & 6779u, ~(~(~1u)), func_4(Struct_3(func_1(), select(1u, 1u, false)), Struct_4(func_3(Struct_3(Struct_2(u_input.a), 42026u), vec4<f32>(133f, -133f, global2[_wgslsmith_index_u32(1611u, 25u)], -1466f), Struct_5(Struct_1(vec2<bool>(false, true), -1850i, vec4<i32>(u_input.a, var_0.x, u_input.b, var_0.x), vec2<bool>(false, true), vec2<f32>(618f, global2[_wgslsmith_index_u32(4294967295u, 25u)]))), Struct_2(-11276i))), Struct_5(Struct_1(vec2<bool>(false, false), var_0.x, vec4<i32>(10827i, -47349i, -1i, 14254i), vec2<bool>(true, false), vec2<f32>(global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(0u, 25u)]))))), Struct_3(global1[_wgslsmith_index_u32(~(~(~18167u)), 14u)], 25412u), all(vec2<bool>(var_0.x > abs(u_input.a), any(vec4<bool>(true, true, true, true)))));
    let var_2 = Struct_1(select(!select(select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, false), vec2<bool>(true, var_1.a)), !vec2<bool>(false, var_1.a), vec2<bool>(true, true)), select(vec2<bool>(!var_1.a, true), vec2<bool>(true, true), any(!vec4<bool>(var_1.a, false, var_1.a, false))), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 25u)] <= -400f, var_1.a), vec2<bool>(var_1.a, true), func_3(Struct_3(Struct_2(5605i), 0u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(1u, 25u)], 333f, -1000f, global2[_wgslsmith_index_u32(41813u, 25u)]))), Struct_5(Struct_1(vec2<bool>(true, false), var_0.x, vec4<i32>(u_input.a, var_0.x, u_input.b, var_0.x), vec2<bool>(false, true), vec2<f32>(global2[_wgslsmith_index_u32(51528u, 25u)], 824f))), global1[_wgslsmith_index_u32(~48645u, 14u)]))), u_input.b | _wgslsmith_clamp_i32(~(-1i), -1866i, -8719i), select(~vec4<i32>(u_input.b ^ var_0.x, -14220i, 14152i, _wgslsmith_mod_i32(var_0.x, 7726i)), vec4<i32>(-1i) * -vec4<i32>(-35697i, -19699i, -604i, var_0.x), false), select(select(vec2<bool>(var_1.a, true), !vec2<bool>(false, var_1.a), var_1.a), !select(select(vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, var_1.a)), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, false), vec2<bool>(var_1.a, false)), var_1.a && true), any(!vec2<bool>(var_1.a, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(22597u, 25u)] + _wgslsmith_f_op_f32(-1112f + global2[_wgslsmith_index_u32(0u, 25u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(15580u, 25u)] + global2[_wgslsmith_index_u32(45136u, 25u)])), -759f, var_1.a))));
    var var_3 = ~1u;
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(~0u, var_0.x);
}

