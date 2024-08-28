struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4>;

var<private> global1: Struct_1;

var<private> global2: vec2<i32>;

var<private> global3: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-536f, -1649f, -303f), vec3<f32>(108f, 568f, -899f), vec3<f32>(800f, 575f, -1000f), vec3<f32>(158f, 172f, -227f), vec3<f32>(-528f, -1938f, 712f), vec3<f32>(924f, -715f, 291f), vec3<f32>(905f, -1000f, 308f), vec3<f32>(1093f, 1010f, -867f));

var<private> global4: Struct_1 = Struct_1(510f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    global4 = Struct_1(global4.a);
    var var_0 = _wgslsmith_f_op_f32(-global4.a);
    let var_1 = ~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, 18135u), arg_1.x | 11675u, 23309u, _wgslsmith_div_u32(0u, arg_1.x)), select(vec4<u32>(16236u, 0u, 1u, 0u), vec4<u32>(u_input.a, arg_0, 90625u, 0u), false) >> (abs(vec4<u32>(u_input.a, arg_1.x, arg_1.x, arg_0)) % vec4<u32>(32u))));
    var var_2 = Struct_4(u_input.a, Struct_3(select(all(vec4<bool>(true, true, true, true)), false, any(select(vec2<bool>(true, false), vec2<bool>(true, false), false))), global2.x, vec2<f32>(_wgslsmith_f_op_f32(-335f + -973f), _wgslsmith_f_op_f32(-1000f + global1.a))), 22265u, (vec3<i32>(-u_input.b, global2.x << (25366u % 32u), global2.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 84801u, arg_0), ~vec3<u32>(4294967295u, u_input.a, 24201u)) % vec3<u32>(32u))) << (vec3<u32>(arg_0, 6708u, 0u) % vec3<u32>(32u)));
    let var_3 = Struct_4(_wgslsmith_sub_u32(~var_1.x, ~(~arg_0 & 4294967295u)), var_2.b, var_1.x, var_2.d);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -141f)))));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_div_f32(-260f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(u_input.a, vec2<u32>(15873u, 53176u))), -1076f))));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 29375i, 2147483647i, -26181i), vec4<i32>(global2.x, global2.x, global2.x, global2.x)), -vec4<i32>(u_input.b, u_input.b, u_input.b, 22667i), true), ~(vec4<i32>(global2.x, global2.x, 23716i, global2.x) ^ vec4<i32>(global2.x, u_input.b, 0i, u_input.b))), vec4<i32>(reverseBits(_wgslsmith_mult_i32(global2.x, -2147483647i)), i32(-1i) * -u_input.b, -1i, global2.x)), _wgslsmith_sub_vec4_i32(abs(firstTrailingBit(-vec4<i32>(u_input.b, -1i, global2.x, u_input.b))), (~vec4<i32>(u_input.b, 1i, 18596i, u_input.b) & vec4<i32>(0i, -2147483647i, global2.x, u_input.b)) >> (((vec4<u32>(4294967295u, u_input.a, u_input.a, 0u) >> (vec4<u32>(5136u, 0u, u_input.a, u_input.a) % vec4<u32>(32u))) << (vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_2 = any(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, max(u_input.a, 0u)) & u_input.a, 4u)]);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-655f, _wgslsmith_f_op_f32(global4.a - var_0.a))))), 1961f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * _wgslsmith_f_op_f32(-639f - -436f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-641f, global4.a, var_2)), global1.a, var_2)), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-global1.a))))));
    let var_4 = min(vec2<i32>(1i, 1i), ~countOneBits((vec2<i32>(-1i, u_input.b) | vec2<i32>(0i, u_input.b)) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1817f + _wgslsmith_div_f32(var_0.a, global4.a))), global1.a, -1000f, 611f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, _wgslsmith_div_f32(477f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.c.x, global4.a) - arg_2.b.c.x)), -2150f)));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-1256f * 290f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.c.x) + -1295f)), arg_2.b.a)) <= _wgslsmith_f_op_f32(-996f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-321f, _wgslsmith_f_op_f32(-global4.a), !arg_2.b.a))));
    let var_2 = ~min(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_2.a, 0u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 51510u, max(62354u, arg_2.a)) >> (~(~vec3<u32>(13717u, 3639u, 39985u)) % vec3<u32>(32u)));
    global4 = Struct_1(_wgslsmith_f_op_f32(arg_2.b.c.x * 902f));
    let var_3 = Struct_3(any(!select(select(vec2<bool>(true, true), vec2<bool>(true, arg_2.b.a), false), select(vec2<bool>(true, arg_2.b.a), vec2<bool>(arg_2.b.a, arg_2.b.a), false), vec2<bool>(false, arg_2.b.a))), 0i, vec2<f32>(1000f, var_0.x));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_3.c)), _wgslsmith_div_vec2_f32(var_0.yz, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.x, global4.a) * vec2<f32>(global1.a, arg_0.x))))), -656f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    global3 = array<vec3<f32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2195f)) + _wgslsmith_f_op_f32(round(-1232f))), 669f) * _wgslsmith_f_op_f32(-801f * arg_0.a));
    var var_1 = Struct_3(select(false, !any(global0[_wgslsmith_index_u32(u_input.a, 4u)]), !(global4.a != arg_1.b)) && (4294967295u == u_input.a), -(~u_input.b), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a)))));
    var_1 = Struct_3(all(select(!vec4<bool>(false, false, true, var_1.a), select(vec4<bool>(var_1.a, var_1.a, false, var_1.a), select(vec4<bool>(var_1.a, var_1.a, false, true), vec4<bool>(var_1.a, true, false, true), vec4<bool>(true, var_1.a, true, var_1.a)), true), _wgslsmith_f_op_f32(-arg_1.b) >= arg_1.b)), -countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b, u_input.b, -5154i), vec3<i32>(-2822i, 2147483647i, -16895i)), -vec3<i32>(-2147483647i, -1i, var_1.b))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1.a * _wgslsmith_f_op_vec2_f32(min(var_1.c, vec2<f32>(-585f, 222f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(0u, vec2<u32>(4294967295u, 4294967295u))) - _wgslsmith_f_op_f32(-208f * arg_1.a.x)), _wgslsmith_f_op_f32(func_3(~4294967295u, vec2<u32>(u_input.a, 18009u)))))));
    let var_2 = var_1.a;
    return u_input.a;
}

fn func_6(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = select(vec2<bool>(select(_wgslsmith_div_u32(arg_0.a, u_input.a) > u_input.a, arg_0.b.a, all(vec4<bool>(arg_0.b.a, arg_0.b.a, true, true))), true), vec2<bool>(true, true), any(!vec3<bool>(all(vec4<bool>(false, arg_0.b.a, arg_0.b.a, false)), -1i >= global2.x, any(vec3<bool>(false, arg_0.b.a, arg_0.b.a)))));
    global1 = Struct_1(global4.a);
    global4 = Struct_1(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1, arg_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, global1.a, arg_0.b.c.x, global4.a)))), -203f, Struct_4(7578u, arg_0.b, 34524u, abs(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.d.x, global2.x, arg_0.b.b), arg_0.d)))).b);
    var var_1 = u_input.a;
    var var_2 = arg_0.b.c.x;
    return arg_0;
}

fn func_1() -> u32 {
    let var_0 = func_6(Struct_4(~(~u_input.a), Struct_3(u_input.b > _wgslsmith_mod_i32(global2.x, 0i), firstTrailingBit(global2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a, global4.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, -2598f)))), func_5(Struct_1(_wgslsmith_f_op_f32(-global1.a)), func_4(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -494f), Struct_4(u_input.a, Struct_3(false, u_input.b, vec2<f32>(global4.a, -1195f)), u_input.a, vec3<i32>(global2.x, u_input.b, -45768i)))), -(~firstTrailingBit(vec3<i32>(u_input.b, -8490i, global2.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1364f)) * global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a))), -1288f, _wgslsmith_f_op_f32(-global1.a)));
    global0 = array<vec3<bool>, 4>();
    var var_1 = ~_wgslsmith_mod_i32(-min(_wgslsmith_mult_i32(u_input.b, -44690i), -36400i), -(~(~var_0.b.b)));
    global4 = Struct_1(_wgslsmith_f_op_f32(-var_0.b.c.x));
    global3 = array<vec3<f32>, 8>();
    return _wgslsmith_div_u32(var_0.a & var_0.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a ^ 0u, 39671u), vec3<u32>(u_input.a, var_0.c ^ 6342u, min(var_0.c, 17973u))));
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<i32>) -> vec4<bool> {
    global1 = Struct_1(182f);
    global0 = array<vec3<bool>, 4>();
    global2 = arg_3;
    let var_0 = arg_1;
    let var_1 = arg_2.yz;
    return !select(!vec4<bool>(true, false, func_6(Struct_4(4294967295u, Struct_3(false, -48902i, vec2<f32>(384f, 658f)), arg_0.x, vec3<i32>(-14937i, u_input.b, global2.x)), vec4<f32>(-1000f, var_0.b, -693f, 1000f)).b.a, true), vec4<bool>(true, true, firstLeadingBit(arg_0.x) < 0u, true), select(vec4<bool>(true, true, true, true), vec4<bool>(func_6(Struct_4(arg_0.x, Struct_3(false, 2147483647i, vec2<f32>(-442f, 1000f)), u_input.a, vec3<i32>(global2.x, arg_3.x, arg_3.x)), vec4<f32>(global4.a, -1163f, -1000f, -3069f)).b.a, any(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, true, true)), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec2<i32>(-30969i, ~(~select(18355i, -2147483647i, true)));
    let var_0 = !func_7(vec4<u32>(func_1(), 5772u, _wgslsmith_sub_u32(max(u_input.a, 4376u), 106007u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1958u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)) & 48491u), func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-975f, -733f, 1518f, global1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a, global1.a, global4.a, -874f) + vec4<f32>(global4.a, -817f, global1.a, 581f)))), 1898f, func_6(func_6(Struct_4(u_input.a, Struct_3(false, -2147483647i, vec2<f32>(global1.a, global1.a)), u_input.a, vec3<i32>(u_input.b, u_input.b, 29786i)), vec4<f32>(-576f, -800f, -2199f, -1163f)), vec4<f32>(global4.a, -781f, -735f, 619f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(1u, 8u)] * global3[_wgslsmith_index_u32(2468u, 8u)]))) - global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(1u, u_input.a)), 8u)]), vec2<i32>(global2.x, countOneBits(firstTrailingBit(25834i))));
    let var_1 = any(var_0.wx);
    var var_2 = Struct_4(0u, Struct_3(var_1, 0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a, -1386f) + vec2<f32>(global1.a, -564f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a, global4.a)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.a, global1.a)))))), reverseBits(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(4294967295u, 1u))) << (firstTrailingBit(func_1()) % 32u), firstTrailingBit(~select(abs(vec3<i32>(-21985i, 23368i, 2147483647i)), vec3<i32>(-1i, -45724i, 22059i), true)));
    var var_3 = i32(-1i) * -(~var_2.b.b);
    let var_4 = var_2.b;
    let var_5 = reverseBits(min(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, var_2.a, 49253u, u_input.a), vec4<u32>(76680u >> (var_2.a % 32u), func_5(Struct_1(-1521f), Struct_2(var_2.b.c, var_2.b.c.x)), u_input.a, ~var_2.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.c, u_input.a, 4294967295u, u_input.a), ~vec4<u32>(7100u, u_input.a, var_2.a, u_input.a)) | ~(~vec4<u32>(55439u, 47279u, 68299u, 4294967295u))));
    var var_6 = (abs(countOneBits(_wgslsmith_sub_vec2_u32(var_5.xy, vec2<u32>(var_5.x, 0u)))) | var_5.zy) << (var_5.zz % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_2.b.c.x)), vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~var_5, select(vec4<u32>(0u, 0u, var_5.x, 60806u), var_5, var_2.b.a)), _wgslsmith_add_u32(10044u << (var_6.x % 32u), _wgslsmith_dot_vec3_u32(var_5.zyz, var_5.xww)), max(_wgslsmith_mod_u32(19438u, var_6.x), u_input.a & var_2.a)), countOneBits(max(reverseBits(55804u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_5.x, 1u), vec3<u32>(var_2.c, var_6.x, var_2.a))))));
}

