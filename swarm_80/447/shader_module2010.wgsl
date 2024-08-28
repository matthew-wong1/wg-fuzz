struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<f32> = vec3<f32>(102f, 1324f, 1207f);

var<private> global2: array<bool, 9> = array<bool, 9>(true, false, false, false, true, false, true, false, true);

var<private> global3: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> vec4<bool> {
    let var_0 = abs(~u_input.a.x);
    global0 = vec2<i32>(_wgslsmith_mod_i32(44525i >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, u_input.e, u_input.b.x), u_input.b), ~u_input.d) % 32u), -(~(-48682i))), _wgslsmith_mod_i32(firstLeadingBit(-abs(u_input.a.x)), _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(-1i, u_input.a.x, 1i, -1i)), vec4<i32>(~61224i, var_0 << (u_input.e % 32u), ~2147483647i, abs(-5321i)))));
    var var_1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~max(~u_input.b, _wgslsmith_mult_vec4_u32(u_input.b, u_input.b))), u_input.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, arg_1, _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(arg_1, 573f, global1.x))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, arg_1), vec3<f32>(-446f, global1.x, arg_1), false)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, arg_1, 822f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(827f, 1431f, arg_1)))))), select(select(arg_0.zxw, select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], false, false), arg_0.ywx, true), arg_0.yxw), arg_0.zxz, select(!vec3<bool>(true, true, arg_0.x), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), arg_0.wxz, true), select(global2[_wgslsmith_index_u32(11467u, 9u)], false, global2[_wgslsmith_index_u32(u_input.c, 9u)])))))));
    var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_sub_u32(19261u, u_input.d)), ~(~select(vec2<u32>(0u, 10563u), u_input.b.ww, arg_0.x)));
    return !vec4<bool>(select(false, any(arg_0) == global2[_wgslsmith_index_u32(u_input.e, 9u)], false), all(!arg_0.ww) | true, !arg_0.x, true);
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = Struct_4(all(!select(select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(u_input.d, 9u)], global2[_wgslsmith_index_u32(u_input.e, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(39782u, 9u)], global2[_wgslsmith_index_u32(u_input.d, 9u)], global2[_wgslsmith_index_u32(u_input.c, 9u)]), false), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 9u)], false, global2[_wgslsmith_index_u32(1u, 9u)])))), select(vec2<bool>(select(true, any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b.x, 9u)])), false), false), vec2<bool>(true, all(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.e, 9u)]))), all(select(func_3(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 9u)], true, false), arg_0), select(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c, 9u)], global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), false), global2[_wgslsmith_index_u32(select(17879u, u_input.e, true), 9u)]))), func_3(vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.b.zww, vec3<u32>(u_input.c, 1u, 7646u) | u_input.b.ywy), 9u)], true, all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.c, 9u)])), true), -320f).xx, u_input.b.yz);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 715f, -189f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-455f, -1572f, 777f) + vec3<f32>(arg_0, arg_0, global1.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 974f, -288f) * vec3<f32>(248f, global1.x, -357f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 276f, -329f)) * vec3<f32>(390f, global1.x, arg_0)))));
    let var_2 = vec3<u32>(u_input.e, ~max(~0u, firstTrailingBit(var_0.d.x)), abs(~var_0.d.x)) >> (_wgslsmith_mult_vec3_u32(~select(~vec3<u32>(0u, u_input.d, 4294967295u), _wgslsmith_clamp_vec3_u32(u_input.b.zwz, vec3<u32>(130972u, 0u, u_input.b.x), u_input.b.zwy), select(vec3<bool>(global2[_wgslsmith_index_u32(52281u, 9u)], var_0.c.x, false), vec3<bool>(var_0.a, var_0.c.x, global2[_wgslsmith_index_u32(u_input.e, 9u)]), true)), reverseBits(u_input.b.zyx)) % vec3<u32>(32u));
    global0 = vec2<i32>(~u_input.a.x, 30945i) >> (vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c, ~4294967295u), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d, 1u), ~1u)), firstLeadingBit(38360u)) % vec2<u32>(32u));
    global2 = array<bool, 9>();
    return _wgslsmith_clamp_i32(24720i, global0.x, global0.x);
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    var var_0 = !select(select(vec3<bool>(false, false, false), vec3<bool>(true || global2[_wgslsmith_index_u32(arg_0.d.x, 9u)], all(arg_0.c), global1.x == 2927f), !(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 9u)], arg_0.c.x, global2[_wgslsmith_index_u32(5321u, 9u)]))), select(!select(vec3<bool>(false, false, false), vec3<bool>(global2[_wgslsmith_index_u32(34796u, 9u)], true, true), false), select(vec3<bool>(true, true, true), !vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 9u)], true), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(4882u, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_0.d.x, 9u)], arg_0.b.x, global2[_wgslsmith_index_u32(4294967295u, 9u)]), vec3<bool>(arg_0.b.x, false, true))), global2[_wgslsmith_index_u32(0u, 9u)] && true), true);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-992f * _wgslsmith_f_op_f32(select(832f, _wgslsmith_div_f32(global1.x, -685f), !(var_0.x & true)))), 955f);
    global2 = array<bool, 9>();
    var var_2 = vec3<i32>(abs(-1i), func_2(var_1), (_wgslsmith_mod_i32(2926i, u_input.a.x) & ~2147483647i) | -_wgslsmith_sub_i32(7885i, global0.x)) << (countOneBits(~vec3<u32>(100195u, u_input.c, countOneBits(arg_0.d.x))) % vec3<u32>(32u));
    let var_3 = Struct_2(arg_0.d.x, Struct_1(select(!(!arg_0.c), !select(arg_0.b, arg_0.b, vec2<bool>(arg_0.c.x, arg_0.b.x)), vec2<bool>(any(vec4<bool>(arg_0.c.x, true, global2[_wgslsmith_index_u32(42653u, 9u)], true)), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, -379f, global1.x, -262f), vec4<f32>(1601f, -1306f, var_1, var_1))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-140f, -1410f, global1.x, global1.x) * vec4<f32>(-1000f, 1000f, 377f, global1.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2125f, 2495f, 284f, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 964f, global1.x, global1.x)), vec4<bool>(arg_0.c.x, false, var_0.x, arg_0.c.x)))), vec3<bool>(!select(false, global2[_wgslsmith_index_u32(arg_0.d.x, 9u)], false), true, !global2[_wgslsmith_index_u32(arg_0.d.x ^ arg_0.d.x, 9u)])), ~u_input.a.x, ~vec3<i32>(1i, -1i, ~select(-14686i, global0.x, arg_0.a)));
    return Struct_4(false, var_3.b.c.xy, select(!select(!arg_0.b, var_0.xz, vec2<bool>(var_3.b.c.x, false)), var_3.b.c.yz, !vec2<bool>(func_3(vec4<bool>(var_3.b.a.x, true, true, global2[_wgslsmith_index_u32(var_3.a, 9u)]), 1824f).x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 5019u), 9u)])), _wgslsmith_sub_vec2_u32(arg_0.d, vec2<u32>(var_3.a, _wgslsmith_sub_u32(var_3.a, ~u_input.e))));
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> vec2<bool> {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global1.x, -163f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(790f, global1.x, -705f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(284f, arg_0, -3122f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0, 302f) - vec3<f32>(462f, global1.x, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, arg_0, arg_0)))))));
    global3 = -1i;
    let var_0 = Struct_3(global1.x, vec2<bool>(true, true));
    var var_1 = u_input.b.x;
    let var_2 = Struct_3(var_0.a, !(!var_0.b));
    return !(!vec2<bool>(global2[_wgslsmith_index_u32(~select(u_input.c, arg_1.d.x, false), 9u)], ~global0.x == (u_input.a.x << (arg_1.d.x % 32u))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    let var_0 = Struct_4(false, !vec2<bool>(arg_2, all(vec3<bool>(false, arg_0.a, arg_1.b.x))), select(select(arg_0.b, !arg_0.b, all(select(vec3<bool>(true, arg_1.b.x, arg_2), vec3<bool>(arg_2, false, global2[_wgslsmith_index_u32(23777u, 9u)]), false))), vec2<bool>(arg_2, arg_2), arg_0.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(~(~29360u), ~46089u), vec2<u32>(34552u, ~firstLeadingBit(arg_0.d.x)), vec2<u32>(firstLeadingBit(func_1(Struct_4(arg_1.a, arg_1.c, arg_1.c, vec2<u32>(u_input.e, arg_1.d.x))).d.x), reverseBits(u_input.c))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1130f * -1377f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1444f + 569f)))))), _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(-1076f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(433f, 476f)) * global1.x)), arg_2)));
    var var_2 = vec4<i32>(_wgslsmith_div_i32(-8658i, ~global0.x), 38557i, _wgslsmith_clamp_i32(-20861i, global0.x, 4032i), _wgslsmith_clamp_i32(global0.x, _wgslsmith_sub_i32(87804i, 32852i), -u_input.a.x) & global0.x) ^ _wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x, 1i, global0.x) | (vec4<i32>(58484i, global0.x, u_input.a.x, u_input.a.x) >> (u_input.b % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(35354i, u_input.a.x, 5596i, 1i)) >> (select(vec4<u32>(arg_0.d.x, u_input.c, var_0.d.x, arg_0.d.x), u_input.b, var_0.a) % vec4<u32>(32u)), vec4<bool>(false, var_0.a, u_input.a.x < global0.x, !global2[_wgslsmith_index_u32(66069u, 9u)])), countOneBits(firstLeadingBit(-vec4<i32>(u_input.a.x, 0i, -29029i, -30186i))));
    global2 = array<bool, 9>();
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(global1.x - -906f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_div_f32(global1.x, -373f)))), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = func_5(Struct_4(true, vec2<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 85060u, u_input.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 54893u, u_input.d), u_input.b.wzz)), 9u)]), func_4(-1000f, func_1(Struct_4(global2[_wgslsmith_index_u32(6254u, 9u)], vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 9u)], global2[_wgslsmith_index_u32(u_input.d, 9u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 9u)], global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec2<u32>(29896u, 4294967295u)))), vec2<u32>(_wgslsmith_mod_u32(u_input.e, u_input.b.x), abs(u_input.b.x)) << (u_input.b.yw % vec2<u32>(32u))), func_1(Struct_4(all(vec2<bool>(true, true)) || global2[_wgslsmith_index_u32(min(42869u, 13381u), 9u)], func_3(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(u_input.e, 9u)], false, false), _wgslsmith_div_f32(global1.x, 305f)).ww, !vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 9u)], false), u_input.b.yx)), false);
    global0 = ~(~_wgslsmith_mult_vec2_i32(u_input.a.yy, vec2<i32>(32123i, select(0i, 32992i, var_1.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(min(u_input.a.x, max(abs(global0.x), 0i)), -select(1i, _wgslsmith_clamp_i32(-20042i, global0.x, 54649i), false)), ~u_input.b.zzx | vec3<u32>(~_wgslsmith_add_u32(u_input.d, 4294967295u), 23821u, _wgslsmith_mod_u32(u_input.e, u_input.d)));
}

