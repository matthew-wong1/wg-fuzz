struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -817f;

var<private> global1: vec3<u32>;

var<private> global2: array<i32, 12>;

var<private> global3: Struct_2;

var<private> global4: vec2<f32> = vec2<f32>(1457f, 547f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>) -> f32 {
    var var_0 = max(~arg_2.x, ~75727u & ~u_input.a);
    var var_1 = ~_wgslsmith_mod_i32(-(~_wgslsmith_div_i32(6748i, 1i)), -1i);
    var var_2 = !select(vec4<bool>(any(vec4<bool>(true, true, true, true)), global1.x >= 4294967295u, false, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(select(true, true, false), all(vec2<bool>(false, true)), any(vec3<bool>(false, true, true)), any(vec3<bool>(false, true, false))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))), vec4<bool>(true, all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true))));
    global3 = arg_1;
    let var_3 = Struct_3(_wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(~vec2<i32>(12104i, global2[_wgslsmith_index_u32(arg_2.x, 12u)]), ~vec2<i32>(-48837i, -12571i)), vec2<i32>(i32(-1i) * -33658i, 0i ^ (1i >> (arg_2.x % 32u)))));
    return 481f;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(353f + _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1116f + _wgslsmith_f_op_f32(-1765f - _wgslsmith_f_op_f32(f32(-1f) * -933f)))));
    global0 = _wgslsmith_f_op_f32(-189f * _wgslsmith_f_op_f32(func_3(arg_3, Struct_2(global3.a), vec3<u32>(_wgslsmith_div_u32(~global1.x, global1.x), 1u, u_input.d))));
    var var_0 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(~4294967295u, 12u)], ~(-17690i), -1i, ~arg_3.a), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.a, arg_3.a, 18949i, arg_3.a), vec4<i32>(global2[_wgslsmith_index_u32(u_input.e, 12u)], global2[_wgslsmith_index_u32(global1.x, 12u)], -2147483647i, -1i) << (vec4<u32>(u_input.e, 37713u, 40330u, 0u) % vec4<u32>(32u)))) << (_wgslsmith_mult_u32(firstLeadingBit(0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, u_input.e, u_input.e, u_input.a), vec4<u32>(4294967295u, global1.x, u_input.d, 32735u))) % 32u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_1))))) - 3540f), _wgslsmith_f_op_f32(round(arg_1)));
    return Struct_3(~select(_wgslsmith_add_i32(~(-37955i), -u_input.b), -var_0.a, arg_2));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = u_input.c;
    var var_1 = global3.a;
    let var_2 = true;
    let var_3 = !var_2;
    let var_4 = func_2(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -934f), (true & (~global1.x >= _wgslsmith_div_u32(arg_0, 4294967295u))) && any(vec2<bool>(any(vec4<bool>(arg_1, var_2, arg_1, true)), true)), Struct_3(u_input.b));
    return Struct_1(all(!(!vec2<bool>(var_2, false))), vec4<bool>(var_3, true, var_3, arg_1), arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.c >> (32841u % 32u));
    var var_1 = -31254i;
    var var_2 = func_1(7380u, false, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 1067f, 2068f)))));
    var var_3 = 0i;
    let var_4 = var_0 > -global2[_wgslsmith_index_u32(30562u, 12u)];
    var var_5 = select(vec2<bool>((~global2[_wgslsmith_index_u32(28301u, 12u)] ^ ~0i) >= -28290i, true), vec2<bool>(any(vec3<bool>(false, true, !var_4)), min(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(52562u, 12u)], 0i), 0i) > select(reverseBits(-15571i), -16952i, var_4)), var_2.a);
    global1 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(77840u, 1u, 0u) << (vec3<u32>(global1.x, global1.x, 66121u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.e, u_input.a)), select(27472u, u_input.d, false) & _wgslsmith_clamp_u32(u_input.e, 1u, 0u), u_input.a), ~firstTrailingBit(vec3<u32>(u_input.a, 0u, 4294967295u)) >> (countOneBits(~min(vec3<u32>(3974u, global1.x, global1.x), vec3<u32>(5833u, 1u, 4294967295u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.d, global1.x, 8603u)), select(~vec3<u32>(global1.x, global1.x, 1u), vec3<u32>(0u, 0u, u_input.d), func_1(0u, false, Struct_2(var_2.c)).b.ywx)), 1u, reverseBits(global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_clamp_i32(-16915i, firstLeadingBit(i32(-1i) * -2147483647i), u_input.c | -var_0), select(_wgslsmith_div_i32(~var_0, global2[_wgslsmith_index_u32(~global1.x, 12u)]), u_input.c, var_2.b.x), _wgslsmith_div_vec3_f32(vec3<f32>(global3.a.x, -1256f, var_2.c.x), vec3<f32>(global4.x, _wgslsmith_f_op_f32(f32(-1f) * -588f), -534f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1000f)))))));
}

