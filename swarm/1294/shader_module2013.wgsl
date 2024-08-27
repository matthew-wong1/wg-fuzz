struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: vec4<u32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 28> = array<u32, 28>(1u, 0u, 17274u, 4138u, 57237u, 4976u, 7890u, 0u, 4294967295u, 1u, 0u, 17405u, 4294967295u, 4294967295u, 27139u, 35455u, 1u, 530u, 17640u, 0u, 17374u, 0u, 32961u, 35888u, 87653u, 4294967295u, 17490u, 60268u);

var<private> global2: Struct_5;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-205f * arg_2.x) * arg_2.x);
    global2 = Struct_5(vec3<i32>(global2.d.x, -global2.b.b.e.x, _wgslsmith_sub_i32(-36754i ^ global2.b.b.e.x, -global2.b.d) << (4294967295u % 32u)), Struct_4(global2.b.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -609f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b.b.b), _wgslsmith_f_op_vec3_f32(exp2(global2.b.b.b))), -min(global2.b.b.e.x, global2.e.c), ~global2.e.d, ~(global2.b.b.e ^ vec4<i32>(global2.a.x, 0i, -1i, 0i))), !(!(!global2.b.c)), 1i, _wgslsmith_mult_u32(global2.e.d.x, _wgslsmith_add_u32(58000u, ~global2.c.x))), (vec4<u32>(u_input.b.x, abs(26905u), 4294967295u, global2.c.x) << ((vec4<u32>(arg_1, 32602u, arg_1, 1u) << ((global2.b.b.d & global2.e.d) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ (global2.c ^ global2.c), _wgslsmith_add_vec4_i32((~vec4<i32>(global2.e.e.x, global2.b.d, global2.e.c, 49700i) ^ vec4<i32>(6435i, global2.d.x, global2.d.x, -44963i)) << (_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global2.e.d, vec4<u32>(13998u, 68918u, arg_1, global1[_wgslsmith_index_u32(0u, 28u)])), _wgslsmith_sub_vec4_u32(global2.b.b.d, vec4<u32>(1u, 108509u, 46500u, 0u))) % vec4<u32>(32u)), global2.b.b.e), global2.b.b);
    var var_1 = !(!(true & !all(vec4<bool>(global2.b.c.x, global2.b.c.x, true, true))));
    global1 = array<u32, 28>();
    let var_2 = global2.e.d.zzx;
    return global2.c;
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = vec4<i32>(~(global2.b.d ^ global2.e.c), _wgslsmith_add_i32(~_wgslsmith_mult_i32(global2.b.d, 0i), _wgslsmith_add_i32(~global2.a.x, firstLeadingBit(_wgslsmith_add_i32(global2.b.b.e.x, global2.b.d)))), _wgslsmith_div_i32(min(2147483647i, ~_wgslsmith_sub_i32(21116i, 2147483647i)), max(-(global2.d.x >> (1u % 32u)), firstTrailingBit(global2.a.x) << (1u % 32u))), _wgslsmith_dot_vec3_i32(global2.e.e.zww, ~_wgslsmith_mod_vec3_i32(global2.d.wwx, ~vec3<i32>(1i, 0i, -2147483647i))));
    var var_1 = Struct_5(global2.e.e.wwz, Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + arg_0.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(583f, arg_0.x)))), global2.e, global2.b.c, -35989i, 0u), select(~max(vec4<u32>(102145u, 37024u, 11990u, global2.b.b.d.x), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], global2.c.x, global1[_wgslsmith_index_u32(1u, 28u)], u_input.b.x)), select(func_3(_wgslsmith_f_op_f32(max(1111f, -122f)), u_input.b.x ^ u_input.b.x, global2.e.b.yx), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 47677u, global1[_wgslsmith_index_u32(global2.b.b.d.x, 28u)], 4730u)), _wgslsmith_sub_vec4_u32(vec4<u32>(25467u, u_input.b.x, 0u, 52243u), vec4<u32>(1u, 37333u, global1[_wgslsmith_index_u32(49318u, 28u)], 1u))), select(!vec4<bool>(true, global2.b.c.x, false, global2.b.c.x), !vec4<bool>(false, true, global2.b.c.x, global2.b.c.x), select(vec4<bool>(true, global2.b.c.x, true, false), vec4<bool>(true, global2.b.c.x, global2.b.c.x, true), vec4<bool>(false, global2.b.c.x, true, false)))), vec4<bool>(global2.b.c.x, global2.b.c.x, select(global2.b.c.x, any(vec3<bool>(global2.b.c.x, false, global2.b.c.x)), global2.b.c.x), false)), vec4<i32>(1i, ~22811i, _wgslsmith_mult_i32(-17748i, ~1i), -1i), Struct_1(_wgslsmith_f_op_f32(min(-558f, arg_0.x)), _wgslsmith_f_op_vec3_f32(global2.e.b - _wgslsmith_f_op_vec3_f32(round(global2.e.b))), -_wgslsmith_add_i32(global2.e.e.x, i32(-1i) * -1i), ~global2.c, global2.e.e));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(1983f * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.b.b.a - var_1.b.a)))), vec2<f32>(_wgslsmith_f_op_f32(-625f - _wgslsmith_f_op_f32(select(global2.b.a, 177f, var_1.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-289f, global2.b.a)) - _wgslsmith_f_op_f32(abs(558f))))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.b.a, -850f) * -1190f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x * -121f)));
    let var_3 = select(select(vec3<bool>(var_1.b.c.x, true, true), select(select(select(vec3<bool>(true, var_1.b.c.x, global2.b.c.x), vec3<bool>(true, global2.b.c.x, global2.b.c.x), vec3<bool>(var_1.b.c.x, var_1.b.c.x, var_1.b.c.x)), select(vec3<bool>(false, true, global2.b.c.x), vec3<bool>(global2.b.c.x, global2.b.c.x, true), vec3<bool>(false, var_1.b.c.x, var_1.b.c.x)), 4294967295u == var_1.c.x), vec3<bool>(true, true, true), any(select(vec4<bool>(var_1.b.c.x, global2.b.c.x, global2.b.c.x, true), vec4<bool>(var_1.b.c.x, false, true, false), true))), select(select(vec3<bool>(true, var_1.b.c.x, var_1.b.c.x), vec3<bool>(var_1.b.c.x, true, false), true), select(select(vec3<bool>(true, global2.b.c.x, false), vec3<bool>(var_1.b.c.x, true, global2.b.c.x), vec3<bool>(false, global2.b.c.x, false)), vec3<bool>(false, false, false), !global2.b.c.x), true)), vec3<bool>(any(!(!vec4<bool>(global2.b.c.x, true, true, var_1.b.c.x))), all(var_1.b.c) || true, _wgslsmith_f_op_f32(381f - -662f) == arg_0.x), !select(select(vec3<bool>(false, false, false), vec3<bool>(global2.b.c.x, var_1.b.c.x, true), !vec3<bool>(global2.b.c.x, false, true)), select(vec3<bool>(var_1.b.c.x, global2.b.c.x, var_1.b.c.x), vec3<bool>(false, var_1.b.c.x, false), false), !(!global2.b.c.x)));
    return Struct_3(var_3, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f)), vec3<f32>(var_1.b.a, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -556f))), _wgslsmith_mult_i32(countOneBits(var_1.a.x), -7953i), ~min(vec4<u32>(global1[_wgslsmith_index_u32(global2.b.b.d.x, 28u)], 1u, 1u, global2.c.x), ~global2.b.b.d), global2.b.b.e));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<i32>) -> Struct_2 {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -504f), 788f)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1063f) - 972f))), 1403f));
    var var_0 = global0.x;
    var var_1 = global2.b;
    var var_2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(251f - global2.e.b.x), global2.b.a))), 528f));
    var var_3 = Struct_5(-var_1.b.e.yyy, Struct_4(global0.x, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -448f))), global2.b.b.b, _wgslsmith_add_i32(select(-604i, 19428i, false), arg_1.x), abs(vec4<u32>(4294967295u, 18843u, 40838u, 35357u)), vec4<i32>(~(-2147483647i), i32(-1i) * -2147483647i, ~global2.a.x, _wgslsmith_add_i32(-20596i, global2.e.c))), !func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 948f) + global2.e.b.xy)).a.yz, arg_2.x, func_3(_wgslsmith_f_op_f32(ceil(1220f)), 4294967295u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.b.b.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.e.a, var_1.a)))))).x), ~abs(var_1.b.d), func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(190f * arg_0)), arg_0)).b.e, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(459f + arg_0)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(761f, global2.e.b.x, _wgslsmith_f_op_f32(sign(var_1.b.b.x)))), ~global2.b.d, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(7565u, var_1.b.d.x, 0u, 0u), global2.e.d), u_input.b.x, global1[_wgslsmith_index_u32(1u, 28u)], countOneBits(global1[_wgslsmith_index_u32(31450u, 28u)])), ~global2.c), abs(~(~arg_1))));
    return Struct_2(~(var_2.b.c & (arg_1.x << (8266u % 32u))) & var_3.e.e.x, _wgslsmith_f_op_f32(-func_2(var_3.b.b.b.zx).b.b.x), ~select(vec2<u32>(~var_3.c.x, 33229u), firstLeadingBit(vec2<u32>(78794u, 12254u)), select(var_1.c, var_3.b.c, var_2.a.x)), var_1.d);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_5 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.a)))), _wgslsmith_f_op_f32(-arg_0.b));
    var var_1 = -(firstLeadingBit(global2.b.b.e.yz) ^ abs(global2.d.xx));
    var var_2 = select(u_input.b.yz, ~(firstTrailingBit(arg_0.c) << ((u_input.b.zx | ~vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u))), select(select(!vec2<bool>(false, global2.b.c.x), func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, global0.x)))).a.xz, global2.b.c.x), vec2<bool>((var_1.x & 2147483647i) <= -global2.d.x, global2.b.c.x), _wgslsmith_f_op_f32(select(arg_0.b, -479f, true)) == _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-818f - -746f)))));
    var_2 = _wgslsmith_add_vec2_u32(~max(func_2(global2.e.b.zx).b.d.wx, global2.b.b.d.wx), ~vec2<u32>(abs(abs(global1[_wgslsmith_index_u32(global2.c.x, 28u)])), _wgslsmith_div_u32(~18862u, global2.b.b.d.x & global2.b.b.d.x)));
    var var_3 = ~abs(_wgslsmith_mult_i32(firstLeadingBit(18270i << (var_2.x % 32u)), arg_1));
    return Struct_5(-vec3<i32>(-1i, reverseBits(-2147483647i), -(~(-25028i))), global2.b, global2.e.d, ~(~select(vec4<i32>(arg_1, var_1.x, -2147483647i, global2.a.x), vec4<i32>(0i, arg_1, 2147483647i, -51323i), select(vec4<bool>(global2.b.c.x, global2.b.c.x, false, true), vec4<bool>(false, true, global2.b.c.x, global2.b.c.x), global2.b.c.x))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global2.b.a)), arg_0.b) + _wgslsmith_f_op_vec2_f32(-global2.b.b.b.xy))).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(global2.b.a, global2.b.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.b.a)), -156f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1742f)))), _wgslsmith_f_op_f32(global2.b.a * _wgslsmith_div_f32(global2.e.a, -1128f)));
    global2 = func_4(func_1(_wgslsmith_f_op_f32(-global0.x), global2.e.e, abs(~reverseBits(global2.e.e.xyw))), -global2.a.x);
    let var_1 = vec3<u32>(global1[_wgslsmith_index_u32(14479u, 28u)], global2.c.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(select(abs(global2.b.b.d.x), 0u, !global2.b.c.x), firstLeadingBit(0u)), select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, global2.e.d.x), vec3<u32>(u_input.a, u_input.b.x, 0u)), ~(~global2.c.x), func_4(func_1(var_0.x, vec4<i32>(global2.e.c, -1i, 2147483647i, -1i), global2.b.b.e.zxy), _wgslsmith_mod_i32(global2.e.c, global2.b.b.e.x)).b.c.x)));
    global2 = func_4(Struct_2(~0i, global0.x, vec2<u32>(58532u, var_1.x) | vec2<u32>(~global1[_wgslsmith_index_u32(var_1.x, 28u)], func_4(Struct_2(global2.b.d, -1000f, vec2<u32>(u_input.b.x, global2.b.b.d.x), 0i), global2.b.b.e.x).b.e), _wgslsmith_dot_vec3_i32(global2.a, func_2(var_0.wx).b.e.xyw)), max(~2147483647i, global2.b.d));
    let var_2 = select(func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.b.x, 835f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 1695f), var_0.wy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, -537f)) + _wgslsmith_f_op_vec2_f32(min(var_0.zy, global2.b.b.b.zy))), ~1u <= global1[_wgslsmith_index_u32(func_2(global2.b.b.b.xx).b.d.x, 28u)]))).a, !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(true, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.e.b.xx, global2.e.b.yx))).a.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(126f * -2274f))), global2.b.b.a), reverseBits(2147483647i) | _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(global2.e.e, vec4<i32>(global2.a.x, -31830i, global2.d.x, global2.b.b.c)), -global2.e.e), -global2.d.x), vec3<u32>(~0u, u_input.a, ~u_input.b.x), var_1.x);
}

