struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(0i, -55422i, 0i, -10893i, 1i, 28421i, 1i, 2147483647i, -20893i, 17512i, 20951i, 1111i, -18098i, 3177i, 32474i, 1i, 2147483647i, 94995i, -38357i, -22354i, 0i, 6012i, -30640i, 1i, 15621i, 70598i, i32(-2147483648), 34204i, i32(-2147483648), -21427i);

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec3<u32>(0u, 28783u, 39825u), -1i, 4294967295u, vec2<bool>(false, true)), Struct_3(vec3<u32>(0u, 4294967295u, 1694u), 20469i, 35855u, vec2<bool>(false, true)), Struct_3(vec3<u32>(397u, 1u, 28922u), 0i, 11379u, vec2<bool>(false, false)), Struct_3(vec3<u32>(1u, 0u, 16286u), -49123i, 65980u, vec2<bool>(false, true)), Struct_3(vec3<u32>(0u, 20988u, 24639u), 1i, 8177u, vec2<bool>(false, false)), Struct_3(vec3<u32>(0u, 0u, 11897u), 2147483647i, 43785u, vec2<bool>(false, false)), Struct_3(vec3<u32>(4294967295u, 22418u, 4294967295u), 54172i, 37059u, vec2<bool>(false, true)), Struct_3(vec3<u32>(27331u, 9474u, 8333u), -43535i, 23845u, vec2<bool>(true, true)), Struct_3(vec3<u32>(0u, 4827u, 55028u), 2147483647i, 4294967295u, vec2<bool>(false, true)), Struct_3(vec3<u32>(73495u, 0u, 4294967295u), -24106i, 60141u, vec2<bool>(true, true)), Struct_3(vec3<u32>(4294967295u, 4444u, 0u), 7277i, 1u, vec2<bool>(false, false)), Struct_3(vec3<u32>(1u, 4294967295u, 38231u), -1i, 19133u, vec2<bool>(true, false)), Struct_3(vec3<u32>(1u, 104424u, 1u), 3427i, 4294967295u, vec2<bool>(false, true)), Struct_3(vec3<u32>(37022u, 69303u, 0u), 23738i, 9890u, vec2<bool>(false, false)), Struct_3(vec3<u32>(46527u, 22602u, 0u), 7629i, 1u, vec2<bool>(true, true)), Struct_3(vec3<u32>(26559u, 34902u, 4294967295u), -10117i, 1u, vec2<bool>(false, true)), Struct_3(vec3<u32>(0u, 4294967295u, 1u), -17905i, 4294967295u, vec2<bool>(true, false)), Struct_3(vec3<u32>(0u, 1u, 28773u), -32826i, 0u, vec2<bool>(false, false)), Struct_3(vec3<u32>(43455u, 66143u, 4282u), 2147483647i, 55690u, vec2<bool>(true, true)), Struct_3(vec3<u32>(0u, 4294967295u, 24799u), -2994i, 39130u, vec2<bool>(false, true)), Struct_3(vec3<u32>(0u, 42327u, 6732u), -65670i, 12015u, vec2<bool>(true, false)), Struct_3(vec3<u32>(0u, 24099u, 4294967295u), -1373i, 0u, vec2<bool>(false, false)), Struct_3(vec3<u32>(1u, 18769u, 0u), i32(-2147483648), 0u, vec2<bool>(true, false)));

var<private> global2: bool;

var<private> global3: array<i32, 19> = array<i32, 19>(i32(-2147483648), i32(-2147483648), -1i, -37870i, 2147483647i, 1i, 0i, 36574i, 1i, 0i, 2147483647i, i32(-2147483648), -56297i, -28556i, 2147483647i, -29941i, -37132i, 0i, 7040i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = array<i32, 30>();
    var var_0 = Struct_3(~arg_0.a, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, arg_0.a.x ^ ~(~36292u)), 30u)], (arg_0.c & _wgslsmith_mod_u32(u_input.a >> (arg_0.c % 32u), arg_0.a.x)) ^ 1u, select(select(select(select(vec2<bool>(arg_0.d.x, arg_0.d.x), arg_0.d, arg_0.d.x), select(vec2<bool>(arg_0.d.x, arg_0.d.x), arg_0.d, arg_0.d.x), vec2<bool>(false, false)), arg_0.d, arg_0.d.x), !arg_0.d, any(vec2<bool>(true, any(vec3<bool>(arg_0.d.x, true, arg_0.d.x))))));
    var var_1 = Struct_4(Struct_3(abs(vec3<u32>(abs(12902u), arg_0.a.x, arg_0.c)), ~_wgslsmith_sub_i32(-49695i, 0i >> (var_0.c % 32u)), arg_0.c, !select(vec2<bool>(var_0.d.x, true), vec2<bool>(arg_0.d.x, arg_0.d.x), any(vec3<bool>(false, var_0.d.x, arg_0.d.x)))), Struct_3(~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.a, arg_0.a), max(var_0.a, var_0.a)), abs(arg_0.b), 30979u, select(!(!vec2<bool>(arg_0.d.x, true)), select(vec2<bool>(false, arg_0.d.x), var_0.d, vec2<bool>(true, arg_0.d.x)), arg_0.b <= countOneBits(global3[_wgslsmith_index_u32(16948u, 19u)]))), 2147483647i, 62970u, Struct_2((global0[_wgslsmith_index_u32(abs(var_0.a.x), 30u)] ^ global3[_wgslsmith_index_u32(arg_0.a.x, 19u)]) & global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), ~4294967295u, _wgslsmith_dot_vec2_u32(var_0.a.yy, vec2<u32>(u_input.a, 9943u))), 30u)], Struct_1(arg_0.d.x, !(!vec3<bool>(var_0.d.x, false, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -626f))))));
    var var_2 = var_1.e;
    var var_3 = Struct_4(arg_0, Struct_3(~var_1.a.a, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(~firstTrailingBit(var_1.d), 19u)], min(_wgslsmith_mod_i32(-57145i, u_input.b), -42913i)), ~countOneBits(countOneBits(u_input.a)), var_0.d), -8869i, arg_0.a.x, Struct_2(~u_input.b, var_1.e.b));
    return u_input.a;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1306f)));
    var var_1 = Struct_2(_wgslsmith_div_i32(-global3[_wgslsmith_index_u32(countOneBits(func_3(Struct_3(vec3<u32>(u_input.a, u_input.a, u_input.a), global0[_wgslsmith_index_u32(1u, 30u)], 1u, vec2<bool>(false, false)))), 19u)], _wgslsmith_add_i32(min(-1i, _wgslsmith_sub_i32(1i, 15529i)), -1i)), Struct_1(false, select(vec3<bool>(any(vec2<bool>(true, false)), true, select(false, true, true)), vec3<bool>(true, true, true), select(true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -537f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.c, var_1.b.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.c))))));
    var var_3 = reverseBits(2147483647i);
    var var_4 = _wgslsmith_dot_vec2_i32(countOneBits(~vec2<i32>(global3[_wgslsmith_index_u32(u_input.a, 19u)], global3[_wgslsmith_index_u32(1140u, 19u)]) ^ vec2<i32>(u_input.b, 21688i)), ~countOneBits(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, global3[_wgslsmith_index_u32(u_input.a, 19u)]), vec2<i32>(-95007i, -2147483647i)))));
    return Struct_2(var_1.a, Struct_1(true, var_1.b.b, 150f));
}

fn func_1() -> u32 {
    global3 = array<i32, 19>();
    let var_0 = any(vec4<bool>(true, !(!any(vec3<bool>(true, true, false))), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), !(!all(vec4<bool>(true, false, true, true)))));
    global2 = var_0;
    global0 = array<i32, 30>();
    var var_1 = func_2();
    return max(~(_wgslsmith_clamp_u32(~0u, u_input.a & 42411u, 1u) >> (abs(u_input.a) % 32u)), _wgslsmith_clamp_u32(3772u, abs(firstTrailingBit(u_input.a)), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~global3[_wgslsmith_index_u32(30963u, 19u)], _wgslsmith_div_i32(1i, 7077i)), -2147483647i, -51216i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], u_input.b, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(27405u, 30u)], -19193i, global3[_wgslsmith_index_u32(1u, 19u)]))), -((vec4<i32>(u_input.b, 1i, u_input.b, u_input.b) ^ vec4<i32>(-30217i, -23319i, -2147483647i, global3[_wgslsmith_index_u32(28303u, 19u)])) >> ((vec4<u32>(1u, u_input.a, 0u, 54672u) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(abs(0u)), 30u)];
    let var_2 = vec3<u32>(u_input.a, _wgslsmith_div_u32(~(~24673u), func_1()), _wgslsmith_add_u32(u_input.a, ~1u));
    let var_3 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), true));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 398f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-709f, -1450f) * func_2().b.c) * _wgslsmith_f_op_f32(trunc(-761f)))));
    let var_5 = select(vec4<bool>(true, all(vec4<bool>(false, any(vec2<bool>(var_3.x, var_3.x)), false, true)), var_3.x, all(var_3)), var_3, var_3.x);
    let var_6 = vec2<u32>(var_2.x, u_input.a);
    var var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(204f, -357f))))) * 883f);
    let var_8 = vec3<bool>(false, var_5.x, !(!all(select(var_5, vec4<bool>(false, false, true, true), var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

