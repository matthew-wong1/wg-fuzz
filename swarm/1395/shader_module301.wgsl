struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: Struct_2 = Struct_2(-22619i, vec2<bool>(false, false), Struct_1(-3083i, vec2<bool>(false, true), 414f), vec4<i32>(-37002i, -12454i, 1i, -45245i), Struct_1(-18210i, vec2<bool>(false, false), -632f));

var<private> global2: Struct_1 = Struct_1(0i, vec2<bool>(false, false), -1000f);

var<private> global3: bool = false;

var<private> global4: array<f32, 32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = vec3<bool>(any(vec2<bool>(select(all(vec2<bool>(true, true)), !global2.b.x, true), arg_2.b.x)), false, global2.b.x);
    var var_1 = global1.e.b.x;
    var var_2 = !vec4<bool>(false, false, global2.b.x, arg_0.e.b.x);
    global2 = arg_2.e;
    let var_3 = Struct_1(select(global1.a, 0i, false), var_2.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f)));
    return vec2<bool>(arg_0.b.x, all(vec4<bool>(true, var_0.x, true, all(!var_2.ywy))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_1(min(_wgslsmith_sub_i32(1387i >> (_wgslsmith_mult_u32(353u, u_input.a) % 32u), -arg_2.a), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-global2.a, firstTrailingBit(-88874i)), global0[_wgslsmith_index_u32(~(~u_input.a), 29u)], arg_0.c.a)), select(vec2<bool>(any(arg_0.e.b), 77298i <= _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.e.a, 19317i), vec3<i32>(global1.e.a, global1.d.x, global1.a))), !arg_2.b, all(vec4<bool>(true, true, true, true))), -1000f);
    global2 = Struct_1(~arg_2.a, vec2<bool>(~u_input.a < firstTrailingBit(36717u), any(select(select(vec2<bool>(true, global1.b.x), arg_0.c.b, global1.c.b.x), vec2<bool>(arg_2.b.x, true), global1.c.b.x != global1.c.b.x))), 572f);
    let var_1 = 563f;
    global3 = func_2(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1 + -1000f), -220f)) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.e.c + -849f))))), Struct_2(-(~80251i), vec2<bool>(all(select(vec4<bool>(true, true, global2.b.x, arg_0.c.b.x), vec4<bool>(arg_2.b.x, arg_0.b.x, false, arg_0.e.b.x), vec4<bool>(true, arg_2.b.x, false, false))), all(!vec3<bool>(var_0.b.x, false, arg_2.b.x))), arg_2, global1.d, Struct_1(_wgslsmith_mult_i32(select(global0[_wgslsmith_index_u32(u_input.a, 29u)], -1i, false), _wgslsmith_mult_i32(50188i, arg_0.e.a)), func_2(Struct_2(-2147483647i, var_0.b, Struct_1(arg_0.a, vec2<bool>(true, global1.e.b.x), arg_0.e.c), arg_0.d, Struct_1(-1i, global1.b, var_0.c)), vec2<f32>(global4[_wgslsmith_index_u32(arg_1.x, 32u)], 164f), Struct_2(global0[_wgslsmith_index_u32(arg_1.x, 29u)], global1.e.b, Struct_1(0i, vec2<bool>(false, false), var_1), global1.d, Struct_1(global0[_wgslsmith_index_u32(u_input.a, 29u)], vec2<bool>(true, true), -404f))), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(arg_2.c + arg_0.c.c))))).x;
    let var_2 = firstLeadingBit(global2.a);
    return Struct_2(_wgslsmith_clamp_i32(abs(abs(global1.c.a)) | 78067i, 19581i, arg_2.a >> (~_wgslsmith_sub_u32(14819u, arg_1.x) % 32u)), func_2(arg_0, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(arg_0.e.c, 371f)))), arg_0), Struct_1(firstLeadingBit(-global2.a >> (38875u % 32u)), select(select(vec2<bool>(var_0.b.x, global2.b.x), vec2<bool>(true, false), arg_0.e.b), vec2<bool>(any(vec3<bool>(false, false, var_0.b.x)), all(vec3<bool>(false, true, global2.b.x))), !select(global1.c.b, arg_2.b, global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a, 32u)]) * global4[_wgslsmith_index_u32(1u, 32u)]))), arg_0.d << (max(vec4<u32>(countOneBits(u_input.a), 0u, arg_3, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_3, 5546u, 54819u, 82152u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, arg_1.x, arg_3), vec4<u32>(1u, 41067u, arg_3, arg_3)))) % vec4<u32>(32u)), arg_2);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = global2.a;
    var var_1 = (min(29966u, abs(_wgslsmith_mod_u32(u_input.a, 4294967295u))) << (u_input.a % 32u)) << (_wgslsmith_mod_u32(u_input.a, ~(~u_input.a) << (~_wgslsmith_mult_u32(u_input.a, 30715u) % 32u)) % 32u);
    var var_2 = global1.d.xz;
    global1 = func_3(Struct_2(_wgslsmith_dot_vec3_i32(arg_1.d.zzx, -vec3<i32>(var_2.x, 34146i, 26688i) & arg_1.d.wxw), vec2<bool>(select(!global1.c.b.x, 1u <= u_input.a, true), arg_1.b.x), func_3(arg_0, ~(~vec2<u32>(27871u, u_input.a)), Struct_1(select(global0[_wgslsmith_index_u32(0u, 29u)], 35964i, true), global1.e.b, -356f), 54346u).c, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(arg_1.d, arg_1.d), firstLeadingBit(global1.d)) & vec4<i32>(-2147483647i, -1i, _wgslsmith_dot_vec2_i32(arg_0.d.yy, vec2<i32>(0i, global1.d.x)), ~(-1i)), func_3(func_3(func_3(Struct_2(arg_0.d.x, global1.b, arg_0.c, arg_0.d, Struct_1(global2.a, vec2<bool>(true, global2.b.x), 1000f)), vec2<u32>(16620u, 4294967295u), arg_1.c, 19913u), vec2<u32>(20998u, u_input.a), global1.c, _wgslsmith_sub_u32(u_input.a, 0u)), vec2<u32>(~46468u, _wgslsmith_clamp_u32(u_input.a, 22522u, u_input.a)), Struct_1(2147483647i, global2.b, global4[_wgslsmith_index_u32(u_input.a, 32u)]), firstLeadingBit(countOneBits(4294967295u))).e), (~vec2<u32>(4294967295u, u_input.a) ^ ~vec2<u32>(4294967295u, u_input.a)) >> (vec2<u32>(_wgslsmith_clamp_u32(abs(u_input.a), _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a), u_input.a), 0u) % vec2<u32>(32u)), arg_0.c, _wgslsmith_div_u32(~37402u, 1u));
    var var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(56792u, u_input.a, ~u_input.a >> (39979u % 32u)) >> (vec3<u32>(~(u_input.a >> (1u % 32u)), 12563u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 37531u), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)), u_input.a)) % vec3<u32>(32u)), select(_wgslsmith_mod_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 30575u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)), vec3<u32>(63762u, u_input.a, 45104u), !vec3<bool>(arg_0.e.b.x, true, true)), ~reverseBits(vec3<u32>(62998u, 77909u, u_input.a))), vec3<u32>(47021u, 1u, 30572u), !select(select(vec3<bool>(arg_0.e.b.x, global2.b.x, arg_0.b.x), vec3<bool>(true, true, arg_0.c.b.x), true), vec3<bool>(arg_1.b.x, false, false), arg_1.b.x)));
    return arg_0;
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = select(!arg_0, arg_0, vec2<bool>(all(select(select(vec4<bool>(false, global2.b.x, false, false), vec4<bool>(false, false, global1.e.b.x, arg_0.x), vec4<bool>(true, false, global2.b.x, true)), vec4<bool>(global1.c.b.x, global2.b.x, arg_0.x, false), select(vec4<bool>(true, global1.e.b.x, false, true), vec4<bool>(global1.c.b.x, global1.e.b.x, global2.b.x, global1.e.b.x), global1.e.b.x))), select(true, false, !(!arg_0.x))));
    let var_1 = -6095i;
    var var_2 = true;
    global0 = array<i32, 29>();
    global4 = array<f32, 32>();
    return func_4(func_3(Struct_2(firstTrailingBit(global2.a), global1.c.b, Struct_1(~global2.a, func_2(Struct_2(global2.a, global2.b, global1.c, vec4<i32>(-1i, var_1, 50155i, global1.e.a), global1.c), vec2<f32>(global1.c.c, global2.c), Struct_2(1i, vec2<bool>(arg_0.x, false), global1.e, global1.d, global1.c)), _wgslsmith_f_op_f32(-327f - -117f)), global1.d, global1.e), vec2<u32>(40570u, 1u), global1.c, _wgslsmith_mod_u32(~(50103u & u_input.a), ~0u)), func_3(func_3(func_3(func_3(Struct_2(0i, var_0, Struct_1(-12392i, global1.e.b, global4[_wgslsmith_index_u32(118826u, 32u)]), vec4<i32>(global1.a, 2147483647i, -1i, -3411i), global1.c), vec2<u32>(u_input.a, u_input.a), Struct_1(-16879i, var_0, global2.c), u_input.a), min(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 29523u)), global1.c, _wgslsmith_clamp_u32(3556u, u_input.a, u_input.a)), min(vec2<u32>(u_input.a, 24528u), ~vec2<u32>(u_input.a, u_input.a)), Struct_1(52280i, func_3(Struct_2(7006i, vec2<bool>(false, global2.b.x), global1.e, vec4<i32>(-30i, global1.a, global2.a, global1.a), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 29u)], vec2<bool>(false, false), 370f)), vec2<u32>(4294967295u, u_input.a), global1.e, 0u).b, _wgslsmith_f_op_f32(global2.c * -1011f)), abs(~1u)), min(vec2<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, 4294967295u)), _wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.a, 9698u), vec2<u32>(1u, 0u), vec2<bool>(true, false)), _wgslsmith_mult_vec2_u32(vec2<u32>(32594u, 1u), vec2<u32>(u_input.a, 13599u)))), global1.c, ~(~(u_input.a >> (u_input.a % 32u)))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = global2.a;
    var var_1 = Struct_2(arg_0.e.a, !arg_0.c.b, global1.e, vec4<i32>(_wgslsmith_sub_i32(-34975i, global2.a), arg_0.e.a, select(~2147483647i, abs(arg_0.d.x), !func_3(Struct_2(global1.c.a, vec2<bool>(false, global2.b.x), Struct_1(global2.a, vec2<bool>(arg_0.b.x, true), -172f), vec4<i32>(0i, -51318i, global2.a, global0[_wgslsmith_index_u32(0u, 29u)]), Struct_1(global2.a, vec2<bool>(true, true), 389f)), arg_2, global1.c, u_input.a).c.b.x), ~(-global2.a & -55007i)), func_4(func_3(arg_0, ~abs(arg_2), func_4(arg_0, Struct_2(global2.a, vec2<bool>(false, global2.b.x), Struct_1(27990i, vec2<bool>(false, global1.e.b.x), -506f), vec4<i32>(global0[_wgslsmith_index_u32(76421u, 29u)], global0[_wgslsmith_index_u32(1439u, 29u)], -2147483647i, arg_0.c.a), Struct_1(global1.a, global2.b, 248f))).c, 4294967295u), Struct_2((global0[_wgslsmith_index_u32(arg_2.x, 29u)] ^ 1i) >> (~4294967295u % 32u), func_2(func_3(arg_0, vec2<u32>(0u, arg_2.x), Struct_1(-2147483647i, vec2<bool>(arg_0.c.b.x, global1.c.b.x), arg_3.x), 86964u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), arg_0), Struct_1(_wgslsmith_add_i32(global2.a, 1i), vec2<bool>(true, global2.b.x), _wgslsmith_f_op_f32(ceil(global2.c))), global1.d, global1.c)).e);
    global4 = array<f32, 32>();
    var var_2 = vec2<bool>(global2.b.x, true);
    global4 = array<f32, 32>();
    return Struct_1(~2147483647i, vec2<bool>(arg_0.b.x & false, func_1(func_1(var_1.e.b).c.b).c.b.x || func_2(func_4(arg_0, Struct_2(-14838i, arg_0.b, global1.c, var_1.d, var_1.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -546f)), Struct_2(global1.c.a, global1.c.b, Struct_1(global0[_wgslsmith_index_u32(1u, 29u)], vec2<bool>(arg_0.e.b.x, var_2.x), global2.c), vec4<i32>(0i, global0[_wgslsmith_index_u32(14066u, 29u)], global2.a, 22219i), arg_0.c)).x), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 18703u), 32u)]);
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_3(Struct_2(-4516i, global1.c.b, arg_0.e, vec4<i32>(-2147483647i, 18065i, -651i, global0[_wgslsmith_index_u32(u_input.a, 29u)]), Struct_1(-5267i, vec2<bool>(true, global1.b.x), -164f)), vec2<u32>(u_input.a, 1u) ^ vec2<u32>(u_input.a, u_input.a), global1.c, _wgslsmith_mult_u32(u_input.a, 24417u)).e.c) * _wgslsmith_f_op_f32(abs(1f))), 190f);
    var var_1 = Struct_2(arg_0.c.a, !arg_0.c.b, Struct_1(-_wgslsmith_div_i32(global1.e.a, _wgslsmith_div_i32(global2.a, 1i)), func_3(arg_0, _wgslsmith_mod_vec2_u32(~vec2<u32>(21462u, u_input.a), vec2<u32>(4294967295u, u_input.a) | vec2<u32>(u_input.a, 39272u)), Struct_1(arg_0.a, select(vec2<bool>(true, true), vec2<bool>(global1.c.b.x, global1.e.b.x), global1.c.b.x), global2.c), 18530u).c.b, _wgslsmith_f_op_f32(f32(-1f) * -2030f)), _wgslsmith_mult_vec4_i32(func_1(func_4(Struct_2(-2147483647i, vec2<bool>(global2.b.x, global1.e.b.x), arg_0.e, arg_0.d, Struct_1(global0[_wgslsmith_index_u32(64422u, 29u)], global2.b, global2.c)), arg_0).b).d, vec4<i32>(_wgslsmith_mult_i32(arg_0.a, global2.a), 2147483647i << (u_input.a % 32u), _wgslsmith_mult_i32(arg_0.c.a, -24391i), global1.a) | (_wgslsmith_div_vec4_i32(global1.d, vec4<i32>(-2147483647i, 2147483647i, global2.a, 1i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, global2.a, global1.e.a, 73873i), vec4<i32>(-1i, 1i, -3568i, global1.a)))), func_4(Struct_2(-60789i, select(func_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 29u)], global2.b, arg_0.c, vec4<i32>(-7559i, global1.c.a, -2147483647i, global1.c.a), Struct_1(41460i, vec2<bool>(true, true), 269f)), vec2<u32>(u_input.a, 0u), global1.c, 10744u).c.b, !arg_0.b, global2.b.x), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 29u)] << (u_input.a % 32u), func_5(Struct_2(global1.e.a, global2.b, global1.e, vec4<i32>(-23236i, global0[_wgslsmith_index_u32(0u, 29u)], arg_0.e.a, -58027i), Struct_1(global1.e.a, vec2<bool>(true, global1.c.b.x), 319f)), var_0.x, vec2<u32>(0u, 51100u), vec2<f32>(-152f, 338f)).b, global2.c), vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 12268u), vec3<u32>(4294967295u, 4294967295u, 471u)), 29u)], global1.e.a, 2147483647i | arg_0.c.a, -52302i), Struct_1(arg_0.a, select(arg_0.c.b, vec2<bool>(global2.b.x, global1.c.b.x), true), _wgslsmith_f_op_f32(min(global2.c, arg_0.c.c)))), Struct_2(81481i, func_5(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -119f), select(vec2<u32>(21061u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1473f, global1.e.c)))).b, Struct_1(arg_0.e.a, global1.e.b, -1276f), vec4<i32>(abs(-2147483647i), -global0[_wgslsmith_index_u32(2159u, 29u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 95206u), 29u)], global0[_wgslsmith_index_u32(0u, 29u)] | -10014i), Struct_1(1i, !global2.b, global1.e.c))).c);
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.a, u_input.a) >> (18153u % 32u), 1u, _wgslsmith_add_u32(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(71u, u_input.a, u_input.a)))), _wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.a), 1u, _wgslsmith_mod_u32(1u, u_input.a)))), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 7247u, min(48622u, u_input.a)), ~(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 31279u), vec3<u32>(u_input.a, u_input.a, 46274u)) << (select(vec3<u32>(4294967295u, 0u, 68003u), vec3<u32>(1u, 1u, u_input.a), vec3<bool>(arg_0.c.b.x, false, global2.b.x)) % vec3<u32>(32u)))));
    let var_3 = func_4(func_3(Struct_2(global0[_wgslsmith_index_u32(1u, 29u)], select(!var_1.e.b, var_1.c.b, !global2.b.x), Struct_1(abs(global0[_wgslsmith_index_u32(u_input.a, 29u)]), select(vec2<bool>(arg_0.b.x, true), vec2<bool>(global1.c.b.x, false), vec2<bool>(arg_0.c.b.x, true)), _wgslsmith_f_op_f32(arg_0.c.c * global1.c.c)), vec4<i32>(-30423i, var_1.e.a, ~global1.e.a, -global2.a), Struct_1(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_2, 29u)], arg_0.a, global1.e.a), !vec2<bool>(true, global1.b.x), -969f)), vec2<u32>(var_2, u_input.a), Struct_1(_wgslsmith_mult_i32(i32(-1i) * -46813i, var_1.c.a), vec2<bool>(global2.b.x, !arg_0.e.b.x), global2.c), var_2), Struct_2(_wgslsmith_add_i32(2147483647i, arg_0.c.a), select(var_1.e.b, vec2<bool>(global2.b.x, arg_0.c.c < arg_0.e.c), true), Struct_1(2147483647i, !var_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.c)))), vec4<i32>(~(~2147483647i), ~var_1.e.a ^ ~global2.a, -(~global1.e.a), abs(-1i)), Struct_1(global0[_wgslsmith_index_u32(62883u, 29u)], select(vec2<bool>(arg_0.e.b.x, false), vec2<bool>(true, var_1.b.x), select(vec2<bool>(false, arg_0.e.b.x), global2.b, var_1.c.b.x)), -732f))).d.x;
    global3 = arg_0.c.b.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.d.xw;
    let var_1 = func_6(Struct_2(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(global1.d, vec4<i32>(var_0.x, 19707i, -1i, 52549i), global1.d), global1.d)), select(select(vec2<bool>(false, false), vec2<bool>(global1.e.b.x, global1.c.b.x), global2.b), select(vec2<bool>(true, true), global1.b, global2.b), vec2<bool>(true, true)), func_5(func_1(global2.b), func_4(func_1(global1.b), func_1(global2.b)).c.c, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.c, global2.c), vec2<f32>(global4[_wgslsmith_index_u32(u_input.a, 32u)], -435f))))), firstTrailingBit(~global1.d) >> (~firstTrailingBit(vec4<u32>(1u, u_input.a, 0u, u_input.a)) % vec4<u32>(32u)), func_4(func_4(func_3(Struct_2(47047i, vec2<bool>(global2.b.x, global1.e.b.x), Struct_1(global2.a, vec2<bool>(true, global2.b.x), -621f), global1.d, global1.e), vec2<u32>(1u, u_input.a), Struct_1(-1i, vec2<bool>(false, true), global4[_wgslsmith_index_u32(u_input.a, 32u)]), 37068u), func_4(Struct_2(var_0.x, vec2<bool>(true, false), Struct_1(-2147483647i, vec2<bool>(global1.e.b.x, false), global2.c), global1.d, Struct_1(global1.d.x, global1.b, global1.e.c)), Struct_2(608i, vec2<bool>(global1.e.b.x, global2.b.x), Struct_1(0i, vec2<bool>(global2.b.x, global1.c.b.x), global4[_wgslsmith_index_u32(0u, 32u)]), vec4<i32>(global1.c.a, var_0.x, -12530i, -6089i), Struct_1(-2147483647i, global2.b, global4[_wgslsmith_index_u32(19844u, 32u)])))), func_1(global1.b)).c));
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a, u_input.a, 29732u), 29u)];
    global1 = Struct_2(-1i, vec2<bool>(true, true), func_1(vec2<bool>(global1.b.x, global1.a >= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), 29u)])).e, ~_wgslsmith_mod_vec4_i32(~var_1.d, -vec4<i32>(global1.d.x, var_1.c.a, 2147483647i, 2147483647i)), global1.e);
    global0 = array<i32, 29>();
    global2 = func_3(Struct_2(global0[_wgslsmith_index_u32(~1u, 29u)], vec2<bool>(global1.b.x, true), Struct_1(~global2.a, var_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c, -1300f))), var_1.d, Struct_1(global0[_wgslsmith_index_u32(u_input.a, 29u)] | global1.a, global2.b, 219f)), ~firstLeadingBit(vec2<u32>(~49146u, _wgslsmith_mod_u32(0u, u_input.a))), Struct_1(reverseBits(-_wgslsmith_dot_vec3_i32(global1.d.ywz, vec3<i32>(2147483647i, 68158i, 21979i))), !func_2(var_1, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global4[_wgslsmith_index_u32(u_input.a, 32u)], var_1.c.c))), var_1), -791f), 4294967295u).e;
    var var_3 = !vec3<bool>(true, var_1.c.a != var_1.e.a, true);
    var var_4 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.d));
}

