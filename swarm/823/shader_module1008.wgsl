struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(i32(-2147483648), -1i, -1i, 0i));

var<private> global1: u32 = 1u;

var<private> global2: array<u32, 12>;

var<private> global3: array<bool, 14> = array<bool, 14>(true, false, false, true, false, false, true, true, false, false, false, true, false, false);

var<private> global4: array<Struct_1, 13>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    global0 = Struct_2(~vec4<i32>(-(global0.a.x | u_input.c), min(-2147483647i, arg_1.a), -25729i, arg_1.a));
    global3 = array<bool, 14>();
    global4 = array<Struct_1, 13>();
    var var_0 = Struct_3(Struct_2(global0.a));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2470f);
    return vec4<i32>(-var_0.a.a.x, global0.a.x, _wgslsmith_sub_i32(-9816i, _wgslsmith_sub_i32(arg_1.a, global0.a.x >> (reverseBits(0u) % 32u))), 348i & ~arg_1.a);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    var var_0 = arg_1;
    global1 = 40464u >> (firstLeadingBit(~(~u_input.e.x)) % 32u);
    var var_1 = arg_0;
    var var_2 = !select(select(select(!vec4<bool>(true, false, arg_1.b, true), vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.b, 14u)], var_0.b), !vec4<bool>(true, var_0.b, true, false)), vec4<bool>(false, true, false, arg_1.b), select(vec4<bool>(true, false, var_0.b, var_0.b), select(vec4<bool>(global3[_wgslsmith_index_u32(42494u, 14u)], arg_1.b, true, false), vec4<bool>(false, var_0.b, true, false), arg_1.b), !vec4<bool>(true, false, false, var_0.b))), !select(!vec4<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 12u)], 14u)], arg_1.b, true, true), !vec4<bool>(false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 14u)], global3[_wgslsmith_index_u32(u_input.a, 14u)], false), select(vec4<bool>(false, var_0.b, true, arg_1.b), vec4<bool>(global3[_wgslsmith_index_u32(26103u, 14u)], var_0.b, global3[_wgslsmith_index_u32(4461u, 14u)], false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 14u)], global3[_wgslsmith_index_u32(4182u, 14u)], arg_1.b, global3[_wgslsmith_index_u32(u_input.d.x, 14u)]))), arg_1.b);
    var var_3 = arg_1.a;
    return Struct_3(arg_0);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1982f), _wgslsmith_f_op_f32(arg_1.x * 986f), _wgslsmith_f_op_f32(f32(-1f) * -768f), -885f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(606f, -913f, 1000f, arg_1.x), vec4<f32>(2479f, -384f, -1975f, arg_1.x)))), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77315u, 12u)], 14u)], global3[_wgslsmith_index_u32(u_input.b, 14u)]))) * vec4<f32>(arg_1.x, 2700f, -766f, arg_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1543f, _wgslsmith_f_op_f32(arg_1.x - arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1042f), _wgslsmith_f_op_f32(f32(-1f) * -180f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))));
    global1 = min(_wgslsmith_add_u32(4294967295u, global2[_wgslsmith_index_u32(~1u, 12u)]), 0u);
    var var_2 = ~vec4<i32>(40024i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-arg_0.a.a.x, ~7485i), max(-1i, u_input.c)), -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -14814i, 0i, -1i), global0.a) & u_input.c, _wgslsmith_mult_i32(~(-u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.c, 2147483647i), vec4<i32>(-2147483647i, -2147483647i, u_input.c, 0i)) ^ global0.a.x));
    var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-427f + arg_1.x)) * -274f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)))), _wgslsmith_f_op_f32(var_0.x - 372f), -1438f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-573f, 640f, arg_1.x, -2294f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -614f, var_0.x, var_0.x) + vec4<f32>(var_0.x, -1025f, arg_1.x, arg_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, arg_1.x, var_1, var_0.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(225f, -1063f, 1000f, 1127f), vec4<f32>(arg_1.x, 485f, var_0.x, 1000f), vec4<bool>(true, false, true, false)))))))));
    return Struct_2(firstLeadingBit((func_3(Struct_2(arg_0.a.a), global4[_wgslsmith_index_u32(80822u, 13u)]).a.a >> ((vec4<u32>(26750u, global2[_wgslsmith_index_u32(20059u, 12u)], 4294967295u, 4294967295u) ^ u_input.e) % vec4<u32>(32u))) << (select(u_input.e, vec4<u32>(u_input.b, 27681u, 24203u, global2[_wgslsmith_index_u32(1u, 12u)]) | vec4<u32>(54091u, u_input.a, 1u, 0u), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 14u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 12u)], 14u)], true, false)) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_2 {
    let var_0 = select(reverseBits(_wgslsmith_div_vec2_i32(arg_0, vec2<i32>(2147483647i, 30251i))), -select(abs(vec2<i32>(-73426i, -1i)), ~global0.a.zz, vec2<bool>(true, true)) ^ select(abs(global0.a.wx), vec2<i32>(arg_0.x & arg_0.x, u_input.c >> (global2[_wgslsmith_index_u32(49699u, 12u)] % 32u)), _wgslsmith_f_op_f32(min(arg_1, arg_1)) == _wgslsmith_f_op_f32(step(-248f, arg_1))), vec2<bool>(false, any(!(!vec2<bool>(global3[_wgslsmith_index_u32(0u, 14u)], true)))));
    var var_1 = Struct_2(global0.a);
    global4 = array<Struct_1, 13>();
    global0 = Struct_2(~(vec4<i32>(-1i) * -var_1.a));
    global0 = func_4(func_3(Struct_2(_wgslsmith_add_vec4_i32(func_2(4294967295u, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 12u)], 13u)]), firstTrailingBit(var_1.a))), global4[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(1u, 12u)]), 13u)]), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-152f + 371f))))));
    return func_3(func_3(func_3(func_3(func_3(Struct_2(vec4<i32>(-1i, -19351i, var_1.a.x, arg_0.x)), Struct_1(u_input.c, global3[_wgslsmith_index_u32(0u, 14u)])).a, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.e.x, 12u)], 13u)]).a, global4[_wgslsmith_index_u32(36272u, 13u)]).a, Struct_1(var_0.x, !(u_input.a >= 1u))).a, global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, ~u_input.a), 12u)], _wgslsmith_add_u32(~44233u, global2[_wgslsmith_index_u32(~41387u, 12u)])), 13u)]).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    global2 = array<u32, 12>();
    global3 = array<bool, 14>();
    global4 = array<Struct_1, 13>();
    let var_0 = func_1(global0.a.wx, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1000f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-827f, -201f, -773f, -483f)), _wgslsmith_div_vec4_f32(vec4<f32>(701f, -205f, -1185f, -325f), vec4<f32>(-231f, -1000f, 941f, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1933f, -257f, 552f, -345f), vec4<f32>(784f, 554f, 869f, -889f), global3[_wgslsmith_index_u32(35456u, 14u)]))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))));
    var var_3 = !all(vec2<bool>(global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(firstTrailingBit(36782u), 14u)]));
    let x = u_input.a;
    s_output = StorageBuffer(1i, u_input.e.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(803f - _wgslsmith_f_op_f32(trunc(var_2))) - 1823f), var_2)), firstLeadingBit(u_input.e.yyy), var_0.a);
}

