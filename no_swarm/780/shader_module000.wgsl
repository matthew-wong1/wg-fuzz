struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
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

var<private> global0: f32;

var<private> global1: array<f32, 4> = array<f32, 4>(1094f, -203f, 1000f, -1302f);

var<private> global2: Struct_3 = Struct_3(Struct_1(898f, vec2<u32>(31677u, 18162u), vec4<bool>(true, true, true, true)), vec2<f32>(-1110f, 1002f), Struct_1(932f, vec2<u32>(31734u, 4294967295u), vec4<bool>(true, true, false, false)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = !vec3<bool>(true, all(vec3<bool>(!global2.a.c.x, false, global2.a.c.x | false)), !global2.a.c.x || any(select(vec3<bool>(false, false, false), global2.c.c.zxw, global2.c.c.zyz)));
    var var_1 = global2.a.b;
    global1 = array<f32, 4>();
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_1.x, 4u)], _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(global2.a.b.x, 4u)], global2.c.a)), 1116f, 2036f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.b.x, global1[_wgslsmith_index_u32(36408u, 4u)], 2177f, -793f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1927f, global2.b.x, _wgslsmith_f_op_f32(max(-682f, 308f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-274f, 251f, arg_0, 1558f) * vec4<f32>(186f, global1[_wgslsmith_index_u32(var_1.x, 4u)], -795f, global2.a.a))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, global2.a.a, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -329f, 220f, 1000f)), global2.c.c))))));
    var_0 = vec3<bool>(true, true, any(vec3<bool>(all(!vec2<bool>(true, global2.c.c.x)), true, var_0.x)));
    return _wgslsmith_f_op_f32(-var_2.x);
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> f32 {
    var var_0 = Struct_2(select(vec4<bool>(!global2.c.c.x, global2.c.c.x | false, global2.a.c.x, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)])) <= _wgslsmith_f_op_f32(func_1(-660f))), !(!(!vec4<bool>(false, true, arg_0.c.c.x, false))), vec4<bool>(false, select(arg_0.a.c.x, true, true), all(!vec4<bool>(true, false, global2.c.c.x, false)), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.c, 4u)])) == -1178f)), _wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-975i, arg_1, -15809i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, arg_1)), 103355i), i32(-1i) * -12797i), -(vec3<i32>(-2147483647i, 2147483647i, 0i) | select(vec3<i32>(36303i, u_input.a.x, u_input.a.x), vec3<i32>(arg_1, 2147483647i, 0i), global2.a.c.yyy))), global2.c.c, global2.c);
    global2 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.c.b.x, 4u)]);
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_0.c.b.x, ~(select(reverseBits(u_input.b), ~97046u, var_0.d.c.x & global2.a.c.x) >> (var_0.d.b.x % 32u))), 4u)];
    let var_2 = Struct_2(!vec4<bool>(any(vec2<bool>(true, true)), !(global2.c.c.x && var_0.d.c.x), all(vec3<bool>(global2.a.c.x, arg_0.c.c.x, arg_0.a.c.x)), any(arg_0.a.c.zzz)), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, var_0.b.x, var_0.b.x) >> (abs(vec3<u32>(16661u, 8625u, 73999u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(select(var_0.b, var_0.b, false), vec3<i32>(0i, var_0.b.x, u_input.a.x)), vec3<i32>(u_input.a.x, arg_1 & arg_1, max(2147483647i, -2310i)))), vec4<bool>(all(var_0.d.c.yww) || all(vec4<bool>(true, var_0.a.x, true, global2.a.c.x)), false, _wgslsmith_div_f32(-1000f, -454f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a * global2.a.a) * _wgslsmith_f_op_f32(-var_1)), all(!(!global2.a.c.zz))), global2.a);
    return _wgslsmith_f_op_f32(select(-856f, global1[_wgslsmith_index_u32(~global2.c.b.x, 4u)], all(!select(!arg_0.a.c.zx, var_0.d.c.wy, !var_2.a.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = global2.a;
    return Struct_1(_wgslsmith_f_op_f32(645f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))) * global2.a.a)), ~(var_0.b << (vec2<u32>(0u, u_input.b >> (8101u % 32u)) % vec2<u32>(32u))), select(vec4<bool>(all(!var_0.c.yw), _wgslsmith_f_op_f32(func_3(Struct_3(global2.a, global2.b, global2.a), 30186i)) >= _wgslsmith_f_op_f32(floor(global2.c.a)), all(vec2<bool>(global2.c.c.x, true)) && global2.a.c.x, (false & global2.a.c.x) & !global2.a.c.x), select(var_0.c, select(vec4<bool>(var_0.c.x, true, false, true), var_0.c, true), select(!var_0.c, !global2.c.c, select(global2.c.c, var_0.c, false))), true));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(select(!vec4<bool>(arg_1.c.x, any(vec4<bool>(false, false, arg_0.x, false)), true, false), arg_1.c, vec4<bool>(arg_0.x, true, u_input.a.x <= -17223i, true)), select(vec3<i32>(u_input.a.x, 0i, -abs(u_input.a.x)), ~(-_wgslsmith_mod_vec3_i32(vec3<i32>(15469i, -1568i, 2073i), vec3<i32>(u_input.a.x, u_input.a.x, 4706i))), func_2(_wgslsmith_mult_vec2_i32(u_input.a, u_input.a), vec4<i32>(~u_input.a.x, ~(-75975i), u_input.a.x, i32(-1i) * -8283i)).c.xzw), select(vec4<bool>(!(global1[_wgslsmith_index_u32(0u, 4u)] == -153f), !(!arg_1.c.x), true, func_2(select(vec2<i32>(u_input.a.x, 0i), vec2<i32>(-2147483647i, u_input.a.x), true), min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 1i, u_input.a.x, -10431i))).c.x), global2.c.c, vec4<bool>(global2.a.c.x, all(func_2(vec2<i32>(u_input.a.x, 1i), vec4<i32>(u_input.a.x, 17311i, 1i, -1893i)).c), true, (u_input.a.x | 17317i) < u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32677u, 4u)]), vec2<u32>(~(~48966u), u_input.c), vec4<bool>(!(!arg_1.c.x), !arg_1.c.x, all(vec3<bool>(true, true, true)), false)));
    global1 = array<f32, 4>();
    var var_1 = abs(select(var_0.b.zz, _wgslsmith_clamp_vec2_i32(var_0.b.zz, vec2<i32>(-1i) * -vec2<i32>(32109i, 27174i), (vec2<i32>(2147483647i, 5797i) | var_0.b.yz) ^ ~vec2<i32>(u_input.a.x, var_0.b.x)), func_2(var_0.b.zz, _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, 33247i, 0i), vec4<i32>(u_input.a.x, var_0.b.x, var_0.b.x, u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -46153i, var_0.b.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, var_0.b.x, -21484i)))).c.x));
    let var_2 = var_0.b.x;
    var_1 = vec2<i32>(var_1.x, _wgslsmith_dot_vec2_i32(max(vec2<i32>(-1i) * -vec2<i32>(var_1.x, var_0.b.x), u_input.a), var_0.b.xy));
    return Struct_2(func_2(vec2<i32>(~var_0.b.x, var_1.x), -max(vec4<i32>(-1i, 0i, -1i, -5782i), vec4<i32>(-8814i, u_input.a.x, 11080i, var_1.x))).c, var_0.b, !vec4<bool>(select(true, all(vec4<bool>(true, false, arg_0.x, false)), !var_0.a.x), !arg_0.x, arg_0.x, false), Struct_1(var_0.d.a, ~var_0.d.b, func_2(vec2<i32>(var_1.x, -var_1.x), countOneBits(vec4<i32>(u_input.a.x, var_0.b.x, var_0.b.x, u_input.a.x))).c));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_sub_vec2_i32(arg_0.b.xy, vec2<i32>(~(~countOneBits(u_input.a.x)), -84786i));
    var var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -246f)) != 721f) & arg_2.x;
    var_0 = select(_wgslsmith_mod_vec2_i32(arg_0.b.yx, u_input.a), _wgslsmith_sub_vec2_i32(firstLeadingBit(~(~vec2<i32>(arg_3.x, arg_3.x))), ~(~(-vec2<i32>(0i, 12038i)))), all(select(select(arg_0.a.wxz, select(global2.a.c.yyw, vec3<bool>(global2.c.c.x, true, global2.c.c.x), arg_0.c.x), vec3<bool>(false, arg_2.x, false)), vec3<bool>(!global2.c.c.x, any(vec4<bool>(arg_0.d.c.x, global2.c.c.x, global2.c.c.x, arg_2.x)), !global2.c.c.x), !arg_0.a.xxz)));
    var var_2 = global2.a;
    var_0 = arg_3.zz;
    return Struct_4(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(403f, global2.b.x))));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_5) -> Struct_3 {
    var var_0 = true;
    let var_1 = i32(-1i) * -(~0i);
    global1 = array<f32, 4>();
    var var_2 = func_4(select(!func_4(vec2<bool>(global2.a.c.x, false), Struct_1(global2.a.a, vec2<u32>(87005u, 0u), vec4<bool>(global2.a.c.x, false, global2.a.c.x, false))).a.yx, !(!(!arg_0.a.c.wy)), vec2<bool>(arg_0.a.c.x, true)), func_4(arg_1.a.c.yy, Struct_1(921f, firstTrailingBit(arg_0.a.b), vec4<bool>(true, true | arg_0.a.c.x, false && arg_1.a.c.x, any(vec4<bool>(true, global2.a.c.x, true, true))))).d);
    global2 = Struct_3(global2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global2.b + vec2<f32>(arg_0.b.a.x, var_2.d.a)))), func_5(func_4(vec2<bool>(true, var_2.d.c.x), Struct_1(-772f, arg_1.a.b, vec4<bool>(arg_1.a.c.x, false, false, arg_1.a.c.x))), vec4<f32>(global1[_wgslsmith_index_u32(arg_1.a.b.x, 4u)], arg_1.b.a.x, 2007f, global1[_wgslsmith_index_u32(0u, 4u)]), select(arg_1.a.c.yyz, vec3<bool>(arg_0.a.c.x, var_2.a.x, false), false), reverseBits(vec4<i32>(1i, arg_0.c, -52043i, var_2.b.x))).a) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_1.b.a - _wgslsmith_f_op_vec2_f32(-global2.b))))), Struct_1(_wgslsmith_f_op_f32(589f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a))), vec2<u32>(select(~1u, 4294967295u, true), arg_0.a.b.x), vec4<bool>(func_4(func_4(vec2<bool>(global2.a.c.x, true), arg_0.a).a.zz, func_4(vec2<bool>(var_2.c.x, true), global2.a).d).d.c.x, false, true, global2.a.c.x)));
    return Struct_3(global2.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.a)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_1.b.a, arg_0.b.a)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(848f, global1[_wgslsmith_index_u32(arg_1.a.b.x, 4u)])))), global2.b)), true)), Struct_1(_wgslsmith_f_op_f32(-arg_1.b.a.x), vec2<u32>(~func_2(vec2<i32>(arg_0.c, 2147483647i), vec4<i32>(39427i, u_input.a.x, arg_1.c, var_1)).b.x, min(~22724u, 4294967295u << (u_input.b % 32u))), !vec4<bool>(!arg_0.a.c.x, any(vec3<bool>(true, false, var_2.a.x)), all(vec2<bool>(false, arg_1.a.c.x)), !global2.a.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 864f;
    var var_1 = !global2.a.c.x;
    global0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u << (u_input.b % 32u), 43976u), 4u)] * global2.c.a))));
    var var_2 = func_6(Struct_5(Struct_1(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-global2.a.a))), global2.a.b, !global2.a.c), func_5(func_4(select(global2.c.c.xx, global2.c.c.xw, global2.a.c.zy), func_2(u_input.a, vec4<i32>(u_input.a.x, -53911i, 0i, 0i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, global1[_wgslsmith_index_u32(u_input.b, 4u)], 1599f, global1[_wgslsmith_index_u32(u_input.c, 4u)])), global2.a.c.yzw, vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -37919i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)), -17026i >> (global2.a.b.x % 32u))), -u_input.a.x), Struct_5(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1139f + 387f), -1000f, global2.c.c.x)), ~global2.c.b, global2.a.c), func_5(func_4(!global2.a.c.xw, func_4(vec2<bool>(global2.c.c.x, false), global2.c).d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, 131f, 1482f, global2.c.a))), vec3<bool>(global2.c.c.x, !global2.a.c.x, true), (vec4<i32>(1i, u_input.a.x, -15540i, 41149i) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)) >> (vec4<u32>(global2.a.b.x, 15155u, u_input.b, u_input.c) % vec4<u32>(32u))), -u_input.a.x));
    var var_3 = Struct_5(func_6(Struct_5(func_6(Struct_5(global2.c, Struct_4(var_2.b), u_input.a.x), Struct_5(global2.a, Struct_4(vec2<f32>(-893f, global2.c.a)), u_input.a.x)).a, func_5(func_4(global2.a.c.xz, global2.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.a, -723f, global2.b.x, var_2.a.a), vec4<f32>(-904f, 2062f, -206f, var_2.c.a), true)), vec3<bool>(true, global2.c.c.x, var_2.c.c.x), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x), Struct_5(func_2(-vec2<i32>(u_input.a.x, u_input.a.x), -vec4<i32>(-420i, -169i, u_input.a.x, 39897i)), func_5(func_4(var_2.c.c.wx, global2.a), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(457f, -479f, global2.b.x, global1[_wgslsmith_index_u32(u_input.b, 4u)]))), global2.c.c.xxw, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -5665i), vec4<i32>(u_input.a.x, 2147483647i, 1i, u_input.a.x), vec4<i32>(u_input.a.x, -356i, 1i, 27708i))), firstLeadingBit(u_input.a.x))).c, Struct_4(global2.b), -1i);
    var var_4 = Struct_5(Struct_1(global2.b.x, vec2<u32>(_wgslsmith_div_u32(var_2.a.b.x, func_2(u_input.a, vec4<i32>(31059i, 2147483647i, 0i, u_input.a.x)).b.x), global2.c.b.x), vec4<bool>(!(!var_3.a.c.x), !all(vec2<bool>(false, var_2.a.c.x)), true, false)), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - global2.a.a) + _wgslsmith_f_op_f32(max(-911f, var_2.c.a))), var_2.c.a)), firstTrailingBit(0i) >> (global2.c.b.x % 32u));
    var_3 = Struct_5(func_6(Struct_5(func_4(select(global2.a.c.xx, var_3.a.c.yy, var_2.c.c.xx), global2.c).d, var_4.b, ~_wgslsmith_add_i32(u_input.a.x, 1i)), Struct_5(var_3.a, func_5(Struct_2(vec4<bool>(var_4.a.c.x, global2.c.c.x, true, var_2.c.c.x), vec3<i32>(-2147483647i, var_4.c, 108i), vec4<bool>(true, var_3.a.c.x, var_4.a.c.x, var_2.c.c.x), var_3.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(16239u, 4u)], global2.b.x, var_4.b.a.x, global1[_wgslsmith_index_u32(var_4.a.b.x, 4u)]), vec4<f32>(1000f, 524f, -618f, -551f))), !var_2.c.c.zwx, min(vec4<i32>(-11727i, var_4.c, var_4.c, 26863i), vec4<i32>(2147483647i, u_input.a.x, 14339i, 2147483647i))), -25316i)).a, func_5(Struct_2(!(!var_4.a.c), vec3<i32>(2147483647i, _wgslsmith_mult_i32(var_4.c, -20965i), var_4.c), !var_3.a.c, Struct_1(_wgslsmith_f_op_f32(ceil(var_3.b.a.x)), _wgslsmith_mod_vec2_u32(var_2.c.b, vec2<u32>(var_2.c.b.x, 1u)), select(var_3.a.c, global2.c.c, var_3.a.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.b.a.x, -1666f, var_2.b.x, 831f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.a, global2.c.a, global1[_wgslsmith_index_u32(33007u, 4u)], var_2.c.a)), false))), var_2.a.c.zwy, abs(vec4<i32>(1i, 0i, -46732i, var_3.c) & vec4<i32>(0i, -36321i, var_4.c, 2147483647i))), ~(~(~_wgslsmith_sub_i32(var_3.c, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec3<u32>(~0u, u_input.b, u_input.c));
}

