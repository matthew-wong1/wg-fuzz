struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: Struct_1 = Struct_1(373f, vec2<bool>(false, true), 14595i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    global1 = Struct_1(978f, select(select(vec2<bool>(true, all(vec3<bool>(true, arg_0.b.x, true))), !(!global1.b), all(select(global1.b, global1.b, vec2<bool>(false, global1.b.x)))), vec2<bool>(true, true), true), 7239i);
    global1 = arg_0;
    global1 = arg_0;
    global0 = array<Struct_1, 15>();
    let var_0 = countOneBits(4294967295u);
    return -2147483647i;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(global1.c, -18825i), func_3(global0[_wgslsmith_index_u32(58875u, 15u)], arg_0), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c, arg_0), vec2<i32>(-2147483647i, 1i))), ~(~u_input.a)), vec4<i32>(max(global1.c >> (19325u % 32u), global1.c), func_3(Struct_1(global1.a, global1.b, u_input.a.x), u_input.a.x), _wgslsmith_dot_vec2_i32(-u_input.a.yz, u_input.a.zw & u_input.a.yz), _wgslsmith_mod_i32(-2147483647i, global1.c))), u_input.a);
    let var_1 = !(!(!global1.b.x));
    var var_2 = -495f;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1974f))), -1543f));
    var var_4 = true;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_3)), -1042f)), select(select(select(select(vec2<bool>(global1.b.x, var_1), global1.b, global1.b.x), select(global1.b, vec2<bool>(false, global1.b.x), true), true), global1.b, !(!global1.b)), global1.b, select(global1.b.x, var_1 & any(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, false)), !(global1.b.x || global1.b.x))), 28811i);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(~max(vec4<u32>(4294967295u, 1u, 0u, 34947u), vec4<u32>(47770u, 4294967295u, 1u, 31812u))), countOneBits(vec4<u32>(1u, 1u, 1u, 1u))), ~1u, firstTrailingBit(65448u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(-260f)), arg_0.b, _wgslsmith_sub_i32(global1.c, i32(-1i) * -func_3(Struct_1(arg_0.a, vec2<bool>(global1.b.x, true), arg_0.c), -1i)));
    let var_2 = global0[_wgslsmith_index_u32(var_0.x, 15u)];
    var var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(127f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(912f, -1880f)) + _wgslsmith_f_op_f32(f32(-1f) * -717f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(258f * _wgslsmith_f_op_f32(f32(-1f) * -248f)))) + var_2.a));
    var_1 = global0[_wgslsmith_index_u32(15353u, 15u)];
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a + var_1.a), var_1.a)) * var_1.a)), arg_0.b, max(~_wgslsmith_add_i32(var_2.c, arg_0.c & 10029i), _wgslsmith_add_i32(1i, var_2.c)));
}

fn func_1() -> vec2<i32> {
    global0 = array<Struct_1, 15>();
    global1 = func_4(func_2(_wgslsmith_dot_vec4_i32(u_input.a, max(u_input.a << (vec4<u32>(1u, 1u, 31003u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(34637i, global1.c, u_input.a.x, global1.c)))), !func_2(2147483647i).b.x);
    global1 = func_2(global1.c);
    var var_0 = _wgslsmith_sub_i32(~(global1.c << (4294967295u % 32u)), -1i);
    var_0 = func_4(func_2(-621i), false).c;
    return u_input.a.zw;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>) -> u32 {
    var var_0 = ~u_input.a.xxy;
    var var_1 = true;
    var var_2 = ~(-56290i);
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a, global1.a, -906f), vec3<f32>(-161f, global1.a, global1.a), vec3<bool>(true, global1.b.x, global1.b.x)))), _wgslsmith_div_vec3_f32(vec3<f32>(global1.a, -1198f, -1256f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-308f, 168f, 1000f), vec3<f32>(global1.a, global1.a, global1.a)))), any(select(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, false, global1.b.x, true), vec4<bool>(true, false, global1.b.x, true))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global1.a, global1.a)), global1.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global1 = Struct_1(1000f, global1.b, arg_1.x);
    return ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(1u, 1u, 0u), 1u, ~63060u)), ~vec3<u32>(5489u, 39419u, 1u) ^ select(vec3<u32>(44834u, 4294967295u, 24742u), vec3<u32>(43468u, 22058u, 0u), false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a), global1.a)), global1.b, _wgslsmith_mod_i32(1i << (0u % 32u), 1i) << ((func_5(~u_input.a.x, func_1()) ^ max(select(10259u, 1u, global1.b.x), ~15907u)) % 32u));
    var var_0 = ~abs(_wgslsmith_clamp_u32(42440u, 23499u, ~(~0u)));
    let var_1 = func_4(func_2(1i), global1.b.x);
    var_0 = 4294967295u;
    var_0 = _wgslsmith_sub_u32(firstLeadingBit(1u), firstLeadingBit(min(~(~1u), ~(~15222u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(abs(max(-317i, -23056i)), 2147483647i), u_input.a.yz, global1.b), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.a)), 1287f, global1.a, 1f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-289f, _wgslsmith_f_op_f32(f32(-1f) * -148f), -2519f, global1.a))));
}

