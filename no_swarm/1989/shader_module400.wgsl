struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 52837i, -1i);

var<private> global1: array<bool, 20> = array<bool, 20>(false, true, true, true, true, false, false, true, true, false, false, true, true, false, false, true, false, false, false, false);

var<private> global2: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: bool) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(vec4<bool>(reverseBits(global0.x) <= u_input.a.x, _wgslsmith_mod_i32(1i, global0.x) == _wgslsmith_div_i32(global0.x, -28237i), arg_2, any(vec4<bool>(true, true, true, arg_2))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, global2.b.x, 867f), vec3<f32>(261f, arg_1.x, 710f))), _wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, global2.b.x, 1084f), vec3<f32>(global2.b.x, -1289f, 876f))), 1u, _wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(global2.d, global2.d)), ~global2.d), !select(select(global2.e, global2.a.ww, global2.e), vec2<bool>(true, true), global2.c == u_input.b.x)), global2.b);
    let var_1 = false;
    global1 = array<bool, 20>();
    let var_2 = Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b)));
    global0 = vec3<i32>(_wgslsmith_add_i32(select(0i, -1i, true), var_2.a.d.x) >> (var_0.a.c % 32u), u_input.a.x, _wgslsmith_div_i32(min(_wgslsmith_mult_i32(22242i, global2.d.x), 0i), 20992i) << (~(~global2.c) % 32u));
    return vec4<bool>(false | arg_0.x, var_1, true, true);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = -vec4<i32>(-26377i, _wgslsmith_dot_vec2_i32(global2.d.zz, _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global2.d.x), vec2<i32>(global2.d.x, global2.d.x)), global2.d.yz)), global0.x, u_input.a.x);
    global1 = array<bool, 20>();
    let var_1 = Struct_1(func_3(global2.a, global2.b.zx, true), vec3<f32>(116f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1.x)), global2.b.x)) - 513f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - 3042f), _wgslsmith_f_op_f32(floor(global2.b.x))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -508f))))), 0u, -_wgslsmith_div_vec4_i32(~global2.d, vec4<i32>(16971i, 7313i, var_0.x, -8880i)) << (u_input.c % vec4<u32>(32u)), global2.e);
    global2 = var_1;
    var var_2 = Struct_3(true, firstLeadingBit(global0.x), Struct_2(Struct_1(func_3(func_3(vec4<bool>(true, false, global1[_wgslsmith_index_u32(0u, 20u)], arg_3), vec2<f32>(1948f, 165f), true), var_1.b.yz, 0u != u_input.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, arg_1.x, arg_1.x)), _wgslsmith_div_u32(global2.c, global2.c), -vec4<i32>(u_input.a.x, var_0.x, global0.x, var_1.d.x), vec2<bool>(global2.a.x, true)), global2.b));
    return var_1;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.x, -1i) ^ (i32(-1i) * -2147483647i), _wgslsmith_mod_i32(_wgslsmith_add_i32(global2.d.x, arg_0.c.a.d.x), global0.x)) << (firstLeadingBit(global2.c) % 32u), ~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.a.x) >> (u_input.c.zxz % vec3<u32>(32u)), max(vec3<i32>(1i, u_input.a.x, -2147483647i), global2.d.xyx))), max(global2.d.x, -59750i));
    let var_1 = ~_wgslsmith_div_i32(abs(global2.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.d.x, arg_0.b, var_0.x, 1i) << (~vec4<u32>(0u, u_input.c.x, 0u, arg_0.c.a.c) % vec4<u32>(32u)), global2.d));
    global2 = func_2(vec2<u32>(global2.c, ~_wgslsmith_clamp_u32(~global2.c, 94905u, ~33406u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global2.b.zz * vec2<f32>(-1984f, 192f)))) - vec2<f32>(-1267f, _wgslsmith_f_op_f32(min(global2.b.x, global2.b.x))))), any(vec3<bool>(true, false, true)), global2.a.x | true);
    let var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b.xx)))));
    return Struct_1(select(select(vec4<bool>(true, arg_0.c.a.e.x, global2.b.x > 134f, global1[_wgslsmith_index_u32(global2.c, 20u)]), global2.a, global2.a), select(!(!arg_0.c.a.a), vec4<bool>(true, arg_0.c.a.e.x, false, all(global2.a.xzy)), vec4<bool>(func_3(vec4<bool>(global2.a.x, true, true, true), arg_0.c.b.yx, arg_0.a).x, global1[_wgslsmith_index_u32(4294967295u, 20u)] || global1[_wgslsmith_index_u32(27954u, 20u)], !global2.e.x, arg_0.a & arg_0.c.a.a.x)), any(func_3(func_3(arg_0.c.a.a, vec2<f32>(arg_0.c.b.x, global2.b.x), true), _wgslsmith_f_op_vec2_f32(-global2.b.zy), true).wz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b) * _wgslsmith_f_op_vec3_f32(select(arg_0.c.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, global2.b.x, -799f) * arg_0.c.b), vec3<f32>(991f, 469f, var_3.x)), true))), abs(_wgslsmith_dot_vec3_u32(u_input.b.xzz, (var_2.yzy >> (u_input.c.wxx % vec3<u32>(32u))) & ~vec3<u32>(u_input.b.x, arg_0.c.a.c, arg_0.c.a.c))), arg_0.c.a.d, vec2<bool>(arg_0.a, arg_0.c.a.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> Struct_2 {
    global0 = -func_1(Struct_3(!arg_2.x, _wgslsmith_dot_vec3_i32(arg_1.d.wwy | vec3<i32>(arg_0.d.x, 10427i, 29058i), vec3<i32>(arg_0.d.x, arg_0.d.x, -5333i)), Struct_2(func_2(u_input.b.wy, global2.b.yx, false, false), func_2(u_input.b.xy, arg_1.b.xy, global2.e.x, arg_2.x).b))).d.zxz;
    global0 = _wgslsmith_sub_vec3_i32(arg_1.d.xwy, -arg_0.d.ywy);
    var var_0 = arg_1;
    var var_1 = Struct_3(!(arg_1.a.x | true), firstLeadingBit(_wgslsmith_sub_i32(select(1i, global2.d.x, global2.b.x < global2.b.x), -global2.d.x & -arg_1.d.x)), Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-746f, -290f, _wgslsmith_div_f32(1988f, 532f)))));
    var var_2 = var_1.c.a;
    return Struct_2(func_2(u_input.b.wx, _wgslsmith_f_op_vec2_f32(arg_0.b.xz - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.b.zy - var_0.b.zy), vec2<f32>(697f, global2.b.x)))), var_1.c.a.b.x == func_2(u_input.c.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(764f, arg_1.b.x) - arg_1.b.xz), func_2(vec2<u32>(0u, u_input.b.x), vec2<f32>(var_2.b.x, 1445f), arg_0.a.x, var_0.a.x).a.x, !var_2.e.x).b.x, !(!(var_1.a == true))), var_1.c.a.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global1 = array<bool, 20>();
    global0 = arg_0.a.d.wzw;
    let var_0 = Struct_2(arg_2, _wgslsmith_div_vec3_f32(func_4(Struct_1(select(vec4<bool>(true, true, arg_1.a.x, false), arg_2.a, arg_1.a), _wgslsmith_f_op_vec3_f32(arg_2.b - vec3<f32>(265f, arg_1.b.x, arg_1.b.x)), abs(13139u), vec4<i32>(0i, -22254i, u_input.a.x, -26746i) | arg_2.d, !global2.a.yz), func_2(u_input.b.ww, _wgslsmith_f_op_vec2_f32(round(arg_2.b.xx)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a.c, arg_2.c), 20u)], all(arg_0.a.a)), arg_1.a.wz, -24011i).b, arg_2.b));
    global2 = arg_1;
    let var_1 = Struct_3(!(true & !(!global1[_wgslsmith_index_u32(1u, 20u)])), countOneBits(_wgslsmith_clamp_i32(abs(~arg_1.d.x), -1i, max(_wgslsmith_dot_vec2_i32(arg_1.d.yw, vec2<i32>(-2147483647i, 48271i)), _wgslsmith_dot_vec3_i32(arg_1.d.yxy, arg_2.d.yyw)))), Struct_2(Struct_1(!var_0.a.a, arg_0.a.b, u_input.c.x, var_0.a.d, func_2(max(u_input.c.xy, vec2<u32>(arg_2.c, arg_1.c)), var_0.a.b.xy, false, select(false, arg_0.a.e.x, arg_2.a.x)).a.yx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_4(arg_0.a, Struct_1(arg_1.a, vec3<f32>(1827f, arg_0.b.x, 1414f), arg_0.a.c, vec4<i32>(global0.x, 10913i, u_input.a.x, -2147483647i), arg_1.e), vec2<bool>(global2.e.x, false), -2147483647i).a.b) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_1.b + arg_1.b))))));
    return _wgslsmith_dot_vec2_i32(func_2(u_input.b.zw, var_1.c.b.xx, false, !arg_1.a.x).d.xz, ~_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a.x, -69931i), vec2<i32>(u_input.a.x, -48944i)));
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: u32) -> Struct_3 {
    var var_0 = vec2<bool>(_wgslsmith_sub_u32(firstLeadingBit(min(global2.c, arg_2)), ~max(u_input.c.x, 116149u)) >= ~global2.c, select(global2.a.x, (abs(1i) >= arg_0) && !global2.e.x, any(!(!vec2<bool>(global1[_wgslsmith_index_u32(arg_2, 20u)], false)))));
    var_0 = func_3(global2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global2.b.zx * _wgslsmith_f_op_vec2_f32(global2.b.xx - vec2<f32>(global2.b.x, -1000f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-811f, global2.b.x), 233f) * vec2<f32>(-830f, _wgslsmith_f_op_f32(global2.b.x - -1000f)))), any(global2.a)).ww;
    var var_1 = func_2(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~11671u, 5133u, _wgslsmith_mod_u32(1u, arg_2)), ~select(arg_2, global2.c, false)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.c, global2.c), firstTrailingBit(0u)), ~select(34163u, 1u, false))), global2.b.yx, any(vec2<bool>(true, var_0.x)), !var_0.x).a.x;
    var_1 = !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2, 4294967295u, u_input.d, 4294967295u), u_input.c) >> (~u_input.b % vec4<u32>(32u))), u_input.c), 20u)];
    global2 = func_2(u_input.c.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global2.b.zx)))), func_4(Struct_1(!vec4<bool>(var_0.x, false, var_0.x, global2.e.x), func_1(Struct_3(false, 11165i, Struct_2(Struct_1(vec4<bool>(var_0.x, global2.e.x, true, false), vec3<f32>(1253f, -994f, 396f), global2.c, global2.d, global2.a.yw), vec3<f32>(global2.b.x, -478f, -300f)))).b, ~(~0u), global2.d, !(!vec2<bool>(false, global2.a.x))), Struct_1(!func_4(Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(global2.c, 20u)], var_0.x, var_0.x), global2.b, arg_2, vec4<i32>(arg_1, global0.x, -16237i, 62401i), global2.a.yx), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(29660u, 20u)], var_0.x, false, false), vec3<f32>(global2.b.x, global2.b.x, 1532f), 1u, vec4<i32>(arg_0, arg_1, global0.x, global2.d.x), vec2<bool>(true, false)), global2.e, 1i).a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, 1000f, global2.b.x), vec3<f32>(-285f, -1139f, global2.b.x)) + vec3<f32>(-1690f, -1827f, -127f)), arg_2, global2.d, !(!vec2<bool>(global2.a.x, true))), !global2.a.wy, func_1(Struct_3(any(global2.a.xyz), global0.x, func_4(Struct_1(vec4<bool>(true, false, global1[_wgslsmith_index_u32(40878u, 20u)], false), global2.b, arg_2, global2.d, global2.e), Struct_1(global2.a, vec3<f32>(global2.b.x, 738f, 1762f), 15081u, global2.d, vec2<bool>(true, global2.e.x)), global2.a.yx, -44991i))).d.x).a.a.x, select(!(_wgslsmith_f_op_f32(f32(-1f) * -1099f) != global2.b.x), !func_3(vec4<bool>(false, false, global1[_wgslsmith_index_u32(arg_2, 20u)], global2.a.x), global2.b.yx, true).x | ((-817f == global2.b.x) || (global2.a.x | false)), (global2.b.x <= global2.b.x) | !(!global1[_wgslsmith_index_u32(arg_2, 20u)])));
    return Struct_3(global2.a.x, ~(abs(_wgslsmith_dot_vec2_i32(u_input.a, global0.xz)) & 6830i), func_4(func_1(Struct_3(true, 52116i, Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(global2.c, 20u)], false, false, global1[_wgslsmith_index_u32(19674u, 20u)]), global2.b, 0u, vec4<i32>(-1i, 1i, 1i, arg_0), global2.e), vec3<f32>(global2.b.x, global2.b.x, global2.b.x)))), Struct_1(vec4<bool>(true, global2.e.x, !var_0.x, func_1(Struct_3(var_0.x, 1i, Struct_2(Struct_1(vec4<bool>(var_0.x, false, global1[_wgslsmith_index_u32(26207u, 20u)], var_0.x), vec3<f32>(-449f, global2.b.x, 557f), 94522u, vec4<i32>(arg_0, u_input.a.x, arg_0, u_input.a.x), global2.e), global2.b))).a.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-274f, -146f, 517f)))), ~arg_2, vec4<i32>(39977i, _wgslsmith_dot_vec4_i32(global2.d, global2.d), -31694i, u_input.a.x), func_3(global2.a, global2.b.zx, func_1(Struct_3(global1[_wgslsmith_index_u32(global2.c, 20u)], -1i, Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(23030u, 20u)], var_0.x, global1[_wgslsmith_index_u32(global2.c, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec3<f32>(-523f, global2.b.x, -1000f), 18031u, vec4<i32>(arg_1, -35545i, 2147483647i, -36979i), global2.e), vec3<f32>(-2237f, 710f, -1130f)))).e.x).wz), !vec2<bool>(false, !global2.a.x), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(vec4<bool>(all(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(u_input.c.x, 20u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2812f)), _wgslsmith_div_f32(global2.b.x, global2.b.x)) == _wgslsmith_f_op_f32(trunc(-698f)), !global2.e.x), global2.b, 4294967295u, -(~select(global2.d, vec4<i32>(-1i, 13007i, 1i, global0.x), true)), !global2.a.wz);
    var var_0 = func_6(~func_5(func_4(func_1(Struct_3(true, 6310i, Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(global2.c, 20u)], true, global1[_wgslsmith_index_u32(u_input.d, 20u)], true), vec3<f32>(global2.b.x, global2.b.x, global2.b.x), 0u, vec4<i32>(u_input.a.x, global2.d.x, -27755i, -46198i), global2.a.yy), global2.b))), func_1(Struct_3(false, -2147483647i, Struct_2(Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 20u)], false, true, global1[_wgslsmith_index_u32(4294967295u, 20u)]), global2.b, 0u, global2.d, vec2<bool>(global1[_wgslsmith_index_u32(42797u, 20u)], global2.e.x)), global2.b))), func_3(global2.a, vec2<f32>(global2.b.x, 623f), true).ww, global0.x), Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(42406u, 20u)], false, false), global2.b, _wgslsmith_sub_u32(1u, global2.c), global2.d >> (vec4<u32>(0u, global2.c, 13392u, 1u) % vec4<u32>(32u)), vec2<bool>(false, global2.a.x)), Struct_1(func_1(Struct_3(true, -22853i, Struct_2(Struct_1(global2.a, vec3<f32>(global2.b.x, -537f, global2.b.x), u_input.b.x, vec4<i32>(-2147483647i, global0.x, 1i, -2147483647i), global2.e), global2.b))).a, _wgslsmith_f_op_vec3_f32(global2.b - global2.b), 4294967295u, vec4<i32>(3896i, global2.d.x, -2147483647i, global0.x), func_1(Struct_3(true, global2.d.x, Struct_2(Struct_1(global2.a, vec3<f32>(global2.b.x, -227f, -1000f), u_input.b.x, vec4<i32>(global2.d.x, 53948i, -1i, global2.d.x), vec2<bool>(global2.e.x, global1[_wgslsmith_index_u32(1u, 20u)])), vec3<f32>(global2.b.x, global2.b.x, global2.b.x)))).e)), global0.x, u_input.b.x);
    let var_1 = ~(~14716u);
    let var_2 = global0.x;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.b.x), -593f)))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, -1748f, firstTrailingBit(countOneBits(_wgslsmith_add_u32(0u, global2.c))));
}

