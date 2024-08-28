struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, true, false, false, false, true, false, false, true, true, false, false, true, true, true, true);

var<private> global1: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(vec2<f32>(-360f, 159f)), Struct_4(vec2<f32>(1440f, -1138f)), Struct_4(vec2<f32>(-1105f, -1400f)), Struct_4(vec2<f32>(1238f, 1036f)), Struct_4(vec2<f32>(-3225f, -939f)), Struct_4(vec2<f32>(748f, -383f)), Struct_4(vec2<f32>(1611f, -495f)), Struct_4(vec2<f32>(-475f, 1025f)), Struct_4(vec2<f32>(324f, 568f)), Struct_4(vec2<f32>(653f, -2671f)), Struct_4(vec2<f32>(-328f, -252f)), Struct_4(vec2<f32>(1137f, 680f)), Struct_4(vec2<f32>(-473f, -486f)), Struct_4(vec2<f32>(-110f, 283f)));

var<private> global2: Struct_2;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<i32> {
    var var_0 = ~(-2147483647i);
    var var_1 = -1000f > _wgslsmith_f_op_f32(select(1552f, arg_0.x, all(!(!vec3<bool>(global0[_wgslsmith_index_u32(global2.b.x, 16u)], global0[_wgslsmith_index_u32(50595u, 16u)], false)))));
    var var_2 = -34586i;
    let var_3 = global2.b.yx;
    var var_4 = _wgslsmith_f_op_f32(abs(arg_0.x));
    return _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -2147483647i, _wgslsmith_dot_vec2_i32(u_input.c | global2.c.a.yy, ~vec2<i32>(37876i, global2.a.a.x))), global2.a.a);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<f32>) -> vec3<i32> {
    var var_0 = global2.a.d;
    global2 = Struct_2(Struct_1(select(global2.a.a, func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-286f, arg_1.a.x, 601f, -1076f), vec4<f32>(-1011f, arg_1.a.x, arg_1.a.x, arg_2.x))), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(global2.b.x, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(121770u, 16u)]))), 669f, max(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(40780i, u_input.a)), arg_0.x), 0u), reverseBits(u_input.b), global2.a);
    let var_1 = _wgslsmith_div_vec4_u32(~(~firstTrailingBit(max(vec4<u32>(u_input.b.x, u_input.b.x, global2.b.x, 0u), vec4<u32>(u_input.b.x, 4294967295u, global2.c.d, 4294967295u)))), _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global2.c.d, global2.a.d, u_input.b.x, 49611u)), vec4<u32>(0u, 1u, 1u, global2.a.d), ~vec4<u32>(u_input.b.x, 1u, 0u, 16617u)), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 54842u, 4294967295u, global2.c.d), vec4<u32>(4294967295u, 19291u, 1u, global2.c.d))) ^ ~(~vec4<u32>(1u, global2.a.d, 4294967295u, 0u))));
    global0 = array<bool, 16>();
    var var_2 = -_wgslsmith_mult_i32(-_wgslsmith_sub_i32(u_input.a, 1i) << (reverseBits(21592u << (global2.a.d % 32u)) % 32u), ~(_wgslsmith_dot_vec4_i32(arg_0, arg_0) ^ u_input.c.x));
    return firstLeadingBit(-vec3<i32>(64747i, -20088i, _wgslsmith_div_i32(~(-1i), _wgslsmith_mult_i32(global2.c.a.x, 11995i))));
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = arg_1;
    var var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(global2.a.a ^ global2.a.a, _wgslsmith_clamp_vec3_i32(arg_3.a, arg_3.a ^ vec3<i32>(arg_3.c, 0i, -28085i), -global2.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f))), global2.a.c, 4294967295u), u_input.b, global2.a);
    var_2 = Struct_2(Struct_1(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global2.a.a.x, -16489i, arg_3.a.x, 0i)), vec4<i32>(-35492i, 1i, 40461i, global2.a.a.x)), _wgslsmith_mod_i32(-2147483647i, -var_2.c.a.x)), _wgslsmith_f_op_f32(min(arg_3.b, arg_3.b)), -firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 0i), vec2<i32>(var_2.c.a.x, arg_3.c))), ~_wgslsmith_div_u32(~4294967295u, max(global2.a.d, 0u))), ~select(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(0u, 4294967295u, global2.c.d)) & ~vec3<u32>(41551u, 4294967295u, 0u), max(var_2.b >> (vec3<u32>(u_input.b.x, 4547u, u_input.b.x) % vec3<u32>(32u)), abs(vec3<u32>(3182u, 1u, arg_3.d))), select(!vec3<bool>(arg_0.x, true, global0[_wgslsmith_index_u32(arg_3.d, 16u)]), vec3<bool>(arg_0.x, arg_0.x, true), global0[_wgslsmith_index_u32(firstTrailingBit(arg_3.d), 16u)])), Struct_1(min(_wgslsmith_div_vec3_i32(var_2.a.a, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.a.x, 0i, -17938i), vec3<i32>(arg_3.c, global2.a.a.x, -2147483647i))), vec3<i32>(35609i, 10485i, ~global2.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.b * var_2.a.b))) * 123f), abs(u_input.a), 0u));
    let var_3 = Struct_3(~_wgslsmith_add_i32(countOneBits(8062i), 1i) ^ u_input.a, Struct_2(var_2.a, ~reverseBits(~vec3<u32>(var_2.b.x, 36864u, var_2.a.d)), Struct_1(~max(vec3<i32>(var_2.a.c, 9424i, var_2.a.a.x), arg_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_3.b, arg_3.b)) * 672f), firstLeadingBit(-14449i), 5336u)), ~u_input.b.xy, Struct_2(Struct_1(_wgslsmith_add_vec3_i32(~var_2.a.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(-17738i, 7887i, -28764i), vec3<i32>(u_input.a, 60861i, 1i), vec3<i32>(29808i, -14166i, -64288i))), -462f, -39673i, ~(42372u << (global2.b.x % 32u))), ~vec3<u32>(abs(u_input.b.x), global2.a.d, ~22852u), arg_3));
    return var_3.b;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = func_4(vec2<bool>(global0[_wgslsmith_index_u32(~(~global2.c.d), 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(382f, global2.c.b))) > arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.b) - 1205f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-730f, -962f, -1362f, 1052f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b, global2.a.b, global2.c.b, 670f)))))), Struct_1(func_2(vec4<i32>(_wgslsmith_add_i32(-1i, u_input.a), ~2147483647i, arg_0.a.x, arg_0.a.x), Struct_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.c.b, global2.c.b)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-125f, -1183f, arg_0.b), vec3<f32>(global2.a.b, arg_0.b, 1038f), vec3<bool>(true, false, true)))))), arg_0.b, reverseBits(reverseBits(global2.a.c)), abs(~_wgslsmith_clamp_u32(global2.c.d, 0u, 43240u))));
    global2 = func_4(vec2<bool>(!any(select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.a.d, 16u)], false), vec3<bool>(global0[_wgslsmith_index_u32(64219u, 16u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), false)), any(vec3<bool>(true, true, all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -742f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-728f, 944f, 1000f, 1000f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1047f, -1046f, var_0.c.b, var_0.c.b))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-951f, var_0.a.b, 787f, var_0.c.b), vec4<f32>(411f, var_0.a.b, arg_0.b, global2.a.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -299f, 1562f, arg_0.b) - vec4<f32>(arg_0.b, var_0.a.b, 1000f, var_0.a.b)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.a.b, 1000f, global2.c.b, 130f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1371f, -2469f, var_0.c.b, global2.c.b) - vec4<f32>(var_0.c.b, arg_0.b, global2.c.b, global2.c.b)))), func_4(vec2<bool>(false, all(select(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 16u)], false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)], false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(var_0.a.d, 16u)], false)))), global2.c.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-172f, -1151f, _wgslsmith_f_op_f32(var_0.a.b * global2.a.b), _wgslsmith_f_op_f32(abs(-1000f)))), Struct_1(var_0.a.a, arg_0.b, var_0.c.c, 125601u << (1u % 32u))).a);
    let var_1 = var_0;
    var var_2 = func_4(!(!(!select(vec2<bool>(global0[_wgslsmith_index_u32(30903u, 16u)], true), vec2<bool>(true, false), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 16u)])))), _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(step(var_1.a.b, -650f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(907f - _wgslsmith_f_op_f32(194f + -779f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) * _wgslsmith_f_op_f32(abs(arg_0.b)))), _wgslsmith_div_f32(-558f, arg_0.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) + _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(-arg_0.b))), 518f), var_0.a).c;
    global0 = array<bool, 16>();
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.a.yz;
    let var_1 = u_input.b.x;
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, global2.c.a.x ^ abs(-28112i)), 11566i), -11036i, global2.c.a.x, -2147483647i);
    var_2 = vec4<i32>(max(abs(func_1(global2.a)), _wgslsmith_div_i32(4568i, -var_2.x)), ~(-8920i) & _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(u_input.a, var_2.x), -21302i & func_4(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(var_1, 16u)]), -1391f, vec4<f32>(global2.a.b, global2.a.b, 1038f, 1988f), Struct_1(vec3<i32>(17631i, -7991i, -8533i), global2.c.b, 2147483647i, u_input.b.x)).a.c, var_0.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_2.x, var_0.x), global2.c.c) ^ ~19275i, u_input.c.x);
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.c.b, -1072f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.a.b, global2.a.b))), !vec2<bool>(global0[_wgslsmith_index_u32(var_1, 16u)], true))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global2.c.b, global2.a.b), vec2<f32>(global2.c.b, -1512f))))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-260f, var_3.a.x))));
    global1 = array<Struct_4, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(-vec4<i32>(global2.c.a.x, -1i, -2147483647i, var_2.x) >> ((vec4<u32>(u_input.b.x, 36496u, 53622u, 4294967295u) ^ vec4<u32>(1u, u_input.b.x, 12006u, 41559u)) % vec4<u32>(32u)))), ~max(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, global2.a.d), u_input.b), u_input.b), global2.b >> (abs(vec3<u32>(1u, var_1, global2.c.d)) % vec3<u32>(32u))));
}

