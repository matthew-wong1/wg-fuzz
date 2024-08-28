struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 21>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<f32, 26>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~(~(~u_input.a)), arg_2.a.c), firstTrailingBit(abs(vec2<u32>(u_input.a, arg_0))));
    var var_1 = select(select(vec4<bool>(-arg_2.b.x == ~1605i, true, false, 4294967295u >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, 46867u), vec4<u32>(u_input.a, u_input.a, 1370u, 4294967295u))), arg_2.d, global1.x), vec4<bool>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(arg_2.a.b, vec4<i32>(28557i, 10622i, arg_2.b.x, 2147483647i)), firstTrailingBit(-2147483647i)) <= -countOneBits(45015i), arg_2.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 26u)]))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(970f))), !arg_2.d.x), select(vec4<bool>(!any(vec3<bool>(global1.x, true, true)), false | arg_2.d.x, any(select(vec2<bool>(true, arg_2.d.x), arg_2.d.wy, true)), all(select(vec4<bool>(global1.x, true, arg_2.d.x, arg_2.d.x), arg_2.d, global1.x))), vec4<bool>(global1.x, all(vec4<bool>(global1.x, global1.x, global1.x, arg_2.d.x)), !arg_2.d.x, global1.x), arg_2.d.x));
    var var_2 = 1i;
    global1 = arg_2.d.xx;
    global2 = array<f32, 26>();
    return !(!select(!arg_2.d, arg_2.d, true));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> Struct_4 {
    var var_0 = -220f;
    global2 = array<f32, 26>();
    global1 = !arg_1.zz;
    var var_1 = ~(-1i);
    return Struct_4(global2[_wgslsmith_index_u32(~1u, 26u)], arg_1.yz, Struct_2(Struct_1(-24512i, max(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-29253i, -58539i, -69363i, -1i), vec4<i32>(-42861i, -1i, 4403i, 16548i))), 1u), abs(firstTrailingBit(vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), Struct_1(0i, vec4<i32>(0i, 1i, 32955i, 1i) << (abs(vec4<u32>(1u, 42518u, u_input.a, 1u)) % vec4<u32>(32u)), arg_0), func_3(~_wgslsmith_div_u32(1800u, 57778u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1235f + global2[_wgslsmith_index_u32(25123u, 26u)]))), Struct_3(Struct_1(42635i, vec4<i32>(13122i, 46829i, -60246i, 0i), 3637u), vec3<i32>(-1i, -44549i, 1i) << (vec3<u32>(arg_0, arg_0, 19749u) % vec3<u32>(32u)), ~vec3<i32>(-24889i, -2147483647i, 0i), arg_1)), Struct_1(0i, ~firstLeadingBit(vec4<i32>(-1i, 2147483647i, -9825i, 23910i)), ~(~u_input.a))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_5) -> vec2<bool> {
    global2 = array<f32, 26>();
    global0 = array<Struct_5, 21>();
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) * vec2<f32>(global2[_wgslsmith_index_u32(4831u, 26u)], global2[_wgslsmith_index_u32(45342u, 26u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(261f, arg_0.a)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1469f, _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(32966u, 26u)]))), vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a), 26u)], 1f)))))));
    var var_1 = -arg_0.c.a.b;
    global2 = array<f32, 26>();
    return arg_0.b;
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    global1 = !select(func_4(func_2(u_input.a, select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(false, global1.x, true, false))), ~min(vec4<i32>(-21299i, -20661i, -26771i, 1i), vec4<i32>(13799i, -29497i, -7036i, 14786i)), Struct_5(0i << (u_input.a % 32u))), select(vec2<bool>(false & global1.x, global1.x), vec2<bool>(global1.x, any(vec2<bool>(true, global1.x))), global1.x), global1.x);
    let var_0 = Struct_3(Struct_1(~min(-1i, _wgslsmith_mult_i32(-46319i, -34893i)), vec4<i32>(0i, 1i, _wgslsmith_mod_i32(2147483647i, -1i), 1i) >> (select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 68450u, u_input.a), vec4<u32>(u_input.a, 48185u, u_input.a, 0u)), firstLeadingBit(vec4<u32>(u_input.a, 66886u, 4294967295u, u_input.a)), global1.x) % vec4<u32>(32u)), u_input.a), vec3<i32>(_wgslsmith_mod_i32(1i, ~9108i), -8459i, 1i) << (abs(max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(52412u, u_input.a, u_input.a), vec3<u32>(0u, 0u, 4294967295u)))) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(12426i >> (u_input.a % 32u), ~1i, firstTrailingBit(-4078i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, -7007i) >> (vec3<u32>(u_input.a, u_input.a, 84162u) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i)))), !(!select(vec4<bool>(false, true, false, global1.x), !vec4<bool>(global1.x, global1.x, false, true), select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(false, global1.x, true, false), global1.x))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -604f));
    global2 = array<f32, 26>();
    global1 = var_0.d.zx;
    return func_2(35850u, var_0.d);
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a, -977f)) - _wgslsmith_f_op_f32(abs(arg_0.a)))) * global2[_wgslsmith_index_u32(~(~(~4294967295u)), 26u)]));
    var var_1 = vec4<f32>(-352f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(1f + global2[_wgslsmith_index_u32(4294967295u, 26u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~1u), 26u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(~0u), 26u)] - 1658f)));
    let var_2 = ~reverseBits(abs(vec4<u32>(4294967295u, 22084u, arg_0.c.a.c, 35791u))) << (vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(func_1(var_1.yz).c.a.c, ~arg_0.c.a.c, u_input.a & 17029u, 489u), arg_0.c.b), max(_wgslsmith_dot_vec2_u32(arg_0.c.b.yx, select(arg_0.c.b.xx, vec2<u32>(80966u, 33052u), true)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.c.b.wzx, arg_0.c.b.xzy), arg_0.c.b.wwz)), func_2(0u, vec4<bool>(select(global1.x, false, arg_0.c.d.x), true, false, true)).c.a.c) % vec4<u32>(32u));
    var var_3 = arg_0.c;
    var var_4 = func_2(~firstTrailingBit(var_3.b.x), vec4<bool>(!func_3(139106u << (var_2.x % 32u), _wgslsmith_f_op_f32(select(877f, var_1.x, global1.x)), Struct_3(var_3.c, vec3<i32>(var_3.c.a, -1i, -2043i), arg_0.c.e.b.zzz, vec4<bool>(var_3.d.x, false, var_3.d.x, global1.x))).x, true, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 76043u, 60904u), var_2.zyw) <= u_input.a, global1.x)).c.a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a > ~(~(~firstTrailingBit(u_input.a)));
    var var_1 = func_5(func_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-331f, global2[_wgslsmith_index_u32(60354u, 26u)]), _wgslsmith_f_op_f32(step(-968f, global2[_wgslsmith_index_u32(u_input.a, 26u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(49767u, 26u)] + global2[_wgslsmith_index_u32(4294967295u, 26u)])))));
    var var_2 = ~vec3<u32>(firstTrailingBit(u_input.a), ~4294967295u, var_1.c.a.c);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(_wgslsmith_add_u32(u_input.a, u_input.a), var_1.c.d).a, global2[_wgslsmith_index_u32(select(func_2(u_input.a, var_1.c.d).c.b.x, firstLeadingBit(0u), true), 26u)], _wgslsmith_f_op_f32(var_1.a * global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, var_2.x), 26u)])) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_1.c.b.x, 26u)], 1000f, global2[_wgslsmith_index_u32(u_input.a, 26u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(10179u, 26u)], var_1.a, global2[_wgslsmith_index_u32(var_1.c.c.c, 26u)]))))));
    let var_4 = global0[_wgslsmith_index_u32(u_input.a, 21u)];
    global0 = array<Struct_5, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(-29903i, select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(10010u, u_input.a, 25541u, var_1.c.b.x), func_5(Struct_4(-1296f, var_1.c.d.wz, var_1.c)).c.b), func_1(_wgslsmith_div_vec2_f32(var_3.xz, vec2<f32>(922f, 1219f))).c.c.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 1u, u_input.a, 1u), reverseBits(var_1.c.b))), var_1.c.b.ywy, vec3<bool>(true, false, global1.x)), ~(~var_1.c.e.b), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 26u)] + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a, 2433f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a))), func_3(var_2.x | u_input.a, func_5(Struct_4(-271f, var_1.b, Struct_2(Struct_1(-32223i, vec4<i32>(-26161i, 60379i, -22615i, -47539i), var_2.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 37882u), Struct_1(-40084i, var_1.c.a.b, 0u), var_1.c.d, Struct_1(1i, var_1.c.c.b, 4294967295u)))).a, Struct_3(Struct_1(2147483647i, var_1.c.e.b, 1u), vec3<i32>(-1i, var_4.a, 30684i), vec3<i32>(1i, -23897i, var_1.c.a.b.x), vec4<bool>(global1.x, var_1.c.d.x, global1.x, global1.x))).x))));
}

