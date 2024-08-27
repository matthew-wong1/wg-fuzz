struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-9194i, vec2<u32>(1u, 14182u), Struct_1(vec2<bool>(false, true), 4294967295u, vec4<bool>(false, false, false, false), vec3<bool>(false, false, true)), vec4<u32>(18925u, 0u, 1u, 29724u), true);

var<private> global1: bool;

var<private> global2: array<vec3<f32>, 21>;

var<private> global3: vec4<i32> = vec4<i32>(-7357i, -28957i, 14118i, 1i);

var<private> global4: vec3<bool>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> bool {
    let var_0 = arg_0.d;
    var var_1 = Struct_1(vec2<bool>(true, true), arg_1, arg_0.c.c, !arg_3.c.d);
    var var_2 = arg_2;
    return all(select(select(select(select(vec3<bool>(false, var_1.a.x, false), var_1.c.zwy, vec3<bool>(arg_3.e, false, true)), vec3<bool>(arg_0.c.a.x, true, true), any(vec3<bool>(arg_0.e, true, false))), select(!vec3<bool>(false, arg_0.e, var_1.a.x), !arg_0.c.c.yww, var_1.c.x), var_1.d), vec3<bool>(var_1.a.x, all(vec2<bool>(false, global4.x)), (arg_3.b.x ^ 18042u) < max(u_input.d, global0.c.b)), arg_0.c.d));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    global3 = _wgslsmith_mod_vec4_i32(-abs(_wgslsmith_mult_vec4_i32(max(vec4<i32>(48917i, 0i, 16651i, -2147483647i), vec4<i32>(global3.x, arg_2.a, arg_2.a, arg_2.a)), vec4<i32>(global0.a, global0.a, arg_2.a, -1i))), countOneBits(~countOneBits(~vec4<i32>(15715i, arg_2.a, 1i, global3.x))));
    global0 = Struct_2(abs(arg_2.a) & -27566i, ~min(arg_2.b, arg_2.d.ww), Struct_1(vec2<bool>(true, false), 4294967295u, select(!select(vec4<bool>(false, arg_2.c.a.x, global4.x, global4.x), vec4<bool>(arg_0.a.x, true, arg_2.e, false), global4.x), vec4<bool>(select(false, false, global4.x), all(vec2<bool>(true, false)), !arg_0.d.x, select(false, false, true)), false), vec3<bool>(true, true || !arg_2.e, true)), arg_2.d, true);
    let var_0 = all(arg_0.c.zwz);
    let var_1 = Struct_2(arg_2.a & _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, min(vec3<i32>(global0.a, global0.a, global3.x), vec3<i32>(arg_2.a, -35621i, -2147483647i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a, 14201i, 0i), vec3<i32>(57820i, 11504i, -14137i), vec3<i32>(global0.a, -8549i, -13541i)) & global3.xxx), vec2<u32>(u_input.d << (1u % 32u), global0.c.b), Struct_1(global0.c.d.xx, _wgslsmith_add_u32(76467u, 1u), !select(vec4<bool>(arg_0.d.x, global4.x, var_0, true), vec4<bool>(global4.x, true, true, global4.x), arg_0.a.x), arg_0.c.zxw), ~(~vec4<u32>(global0.c.b, global0.d.x, global0.c.b, 94842u) << (_wgslsmith_add_vec4_u32(~vec4<u32>(10766u, 50476u, 45092u, u_input.d), min(arg_2.d, global0.d)) % vec4<u32>(32u))), all(global0.c.c));
    global3 = abs(reverseBits(abs(vec4<i32>(u_input.b, global0.a, -41726i, global0.a) ^ select(vec4<i32>(2147483647i, u_input.c.x, 1i, global0.a), vec4<i32>(arg_2.a, u_input.b, -3610i, 0i), arg_2.c.c))));
    return _wgslsmith_div_i32(-12448i, ~global0.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = Struct_2(func_4(Struct_1(!global0.c.a, _wgslsmith_dot_vec4_u32(vec4<u32>(49139u, 1u, 0u, arg_1.b), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_2.d.x, 42041u, arg_1.b), vec4<u32>(u_input.d, global0.b.x, 0u, 10262u))), vec4<bool>(func_3(arg_2, arg_2.b.x, 1000f, Struct_2(1i, vec2<u32>(20150u, global0.b.x), global0.c, vec4<u32>(11860u, 8442u, u_input.d, 4294967295u), arg_1.d.x)), true, true || global4.x, arg_1.d.x), arg_1.d), vec3<f32>(_wgslsmith_f_op_f32(step(-238f, 2353f)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-276f, -1225f) - _wgslsmith_f_op_f32(f32(-1f) * -1729f))), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global3.x, -2147483647i, global0.a), select(vec4<i32>(2147483647i, 27310i, global3.x, 1i), vec4<i32>(arg_0.a, 0i, -5584i, u_input.c.x), true)), arg_0.b, arg_0.c, reverseBits(vec4<u32>(23710u, 4294967295u, 743u, 0u)), _wgslsmith_div_f32(-738f, 1035f) > _wgslsmith_f_op_f32(ceil(-828f)))), abs(vec2<u32>(abs(arg_1.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_0.d.x), vec2<u32>(global0.d.x, 1u)))) & ((arg_0.d.xy >> (_wgslsmith_mod_vec2_u32(vec2<u32>(19407u, 17049u), vec2<u32>(u_input.d, arg_2.d.x)) % vec2<u32>(32u))) >> (vec2<u32>(firstLeadingBit(global0.c.b), 54571u) % vec2<u32>(32u))), arg_2.c, abs(~vec4<u32>(~global0.d.x, global0.d.x, countOneBits(u_input.d), _wgslsmith_add_u32(u_input.d, u_input.d))), arg_2.e);
    var var_1 = select(select(vec3<bool>(!any(var_0.c.c.zyx), (2335i << (u_input.d % 32u)) == 21190i, global0.e), arg_2.c.c.xzy, select(vec3<bool>(2147483647i >= global3.x, global0.c.a.x, func_3(Struct_2(arg_2.a, arg_0.b, global0.c, vec4<u32>(13064u, var_0.d.x, global0.b.x, 1u), arg_2.c.d.x), 4294967295u, -479f, arg_0)), select(select(vec3<bool>(false, arg_2.c.c.x, true), vec3<bool>(true, global0.e, var_0.e), vec3<bool>(true, true, true)), var_0.c.c.wxy, true), global4.x)), var_0.c.c.yyw, !(!vec3<bool>(all(arg_0.c.c), global4.x, true)));
    var var_2 = global0.a;
    var var_3 = arg_1.b;
    var var_4 = _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.a, global0.a), vec3<i32>(2147483647i, global3.x, -2147483647i)), firstTrailingBit(13360i)) < (_wgslsmith_div_i32(reverseBits(-2147483647i), -_wgslsmith_clamp_i32(-849i, 0i, var_0.a)) | _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a, global3.yxz), _wgslsmith_mult_i32(-2147483647i, i32(-1i) * -1i)));
    return func_3(arg_2, countOneBits(arg_0.d.x), _wgslsmith_div_f32(2484f, -631f), arg_0) || func_3(arg_0, _wgslsmith_dot_vec4_u32(arg_0.d, ~vec4<u32>(2511u, 70017u, 0u, 26416u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-516f * 716f), _wgslsmith_f_op_f32(692f * -1663f))))), arg_2);
}

fn func_5(arg_0: bool, arg_1: vec4<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-546f + 1941f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-409f + 211f) - _wgslsmith_f_op_f32(round(215f))))));
    var var_1 = Struct_1(!vec2<bool>(!arg_0, func_3(Struct_2(0i, vec2<u32>(0u, u_input.d), Struct_1(vec2<bool>(arg_0, arg_0), u_input.d, global0.c.c, vec3<bool>(true, false, arg_0)), vec4<u32>(50235u, u_input.d, global0.d.x, u_input.d), arg_0), countOneBits(1u), _wgslsmith_f_op_f32(f32(-1f) * -822f), Struct_2(global3.x, global0.b, global0.c, vec4<u32>(0u, 104962u, 4294967295u, 1u), arg_0))), firstTrailingBit(u_input.d), !(!global0.c.c), !(!select(global0.c.c.xyx, select(global0.c.d, global0.c.d, global4.x), func_2(Struct_2(-2147483647i, global0.d.xy, global0.c, vec4<u32>(global0.b.x, u_input.d, 0u, 4294967295u), global4.x), Struct_1(vec2<bool>(global0.e, arg_0), global0.b.x, global0.c.c, vec3<bool>(arg_0, true, true)), Struct_2(1i, vec2<u32>(58203u, 28723u), global0.c, vec4<u32>(global0.d.x, global0.b.x, global0.d.x, 4294967295u), false)))));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-759f)))))));
    var_0 = _wgslsmith_f_op_f32(-1953f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1425f + 462f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-165f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1222f)))));
    global4 = select(vec3<bool>(~(~33617u) != _wgslsmith_div_u32(~u_input.d, ~var_1.b), any(!var_1.c), u_input.d <= global0.d.x), !select(select(!vec3<bool>(var_1.c.x, true, global4.x), vec3<bool>(false, global0.c.a.x, var_1.a.x), var_1.d), !var_1.c.ywy, global4.x), global0.c.d);
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(500f, 684f, 374f, 299f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, -667f, 104f, 433f)), var_1.c)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(233f, 393f, -663f, 2058f), vec4<f32>(145f, 1436f, -874f, 1358f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(893f, 356f, -1000f, 453f)))))));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    global4 = !select(!select(global0.c.d, select(vec3<bool>(global0.c.d.x, false, false), global0.c.c.zww, false), !vec3<bool>(global4.x, true, false)), global0.c.d, false);
    let var_0 = _wgslsmith_mult_i32(54791i, global3.x);
    var var_1 = ~vec4<i32>(_wgslsmith_mod_i32(-arg_0.x, ~25738i), 1i, 1i >> (1u % 32u), arg_2) << (~_wgslsmith_div_vec4_u32(abs(countOneBits(global0.d)), ~global0.d) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) * arg_1);
    let var_3 = Struct_2(~arg_0.x, _wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(3612u, 0u), global0.d.x), _wgslsmith_div_vec2_u32(arg_3, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), arg_3), 0u)), abs(~_wgslsmith_div_vec2_u32(vec2<u32>(1532u, 8120u), arg_3))), global0.c, _wgslsmith_mod_vec4_u32(global0.d, max(vec4<u32>(108718u, firstLeadingBit(global0.c.b), _wgslsmith_div_u32(global0.d.x, 12795u), max(113u, 0u)), vec4<u32>(9026u, 1u, global0.d.x, _wgslsmith_clamp_u32(4294967295u, arg_3.x, 10200u)))), select(global4.x | (true & global0.c.d.x), global4.x, select(true, true, global0.e)));
    return var_3.c;
}

fn func_1() -> Struct_2 {
    global2 = array<vec3<f32>, 21>();
    let var_0 = global0.d.zz;
    global2 = array<vec3<f32>, 21>();
    global0 = Struct_2(-1i, _wgslsmith_div_vec2_u32(~global0.b, ~vec2<u32>(16499u, 48832u) << (abs(~vec2<u32>(global0.d.x, var_0.x)) % vec2<u32>(32u))), func_6(vec2<i32>(26744i, u_input.c.x), _wgslsmith_f_op_vec4_f32(func_5(!func_2(Struct_2(2147483647i, vec2<u32>(21671u, var_0.x), global0.c, global0.d, global4.x), global0.c, Struct_2(53650i, vec2<u32>(5323u, var_0.x), global0.c, global0.d, global0.e)), vec4<i32>(~18235i, global0.a, ~u_input.a.x, global3.x))), firstLeadingBit(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.a, u_input.b, -9255i), vec4<i32>(1i, global3.x, -1i, -25747i)))), ~(~vec2<u32>(var_0.x, u_input.d)) & (max(global0.b, vec2<u32>(u_input.d, u_input.d)) >> (~vec2<u32>(u_input.d, 93883u) % vec2<u32>(32u)))), reverseBits(select(~select(global0.d, vec4<u32>(u_input.d, 1u, global0.b.x, u_input.d), false), vec4<u32>(1u & global0.c.b, 22991u, ~var_0.x, firstTrailingBit(var_0.x)), global4.x)), false);
    global4 = select(global0.c.c.xxx, !(!func_6(vec2<i32>(-15509i, 1i), vec4<f32>(732f, -2067f, 788f, -600f), -20623i, vec2<u32>(4294967295u, global0.c.b) | global0.b).d), !(!(!all(global0.c.c))));
    return Struct_2(global0.a, _wgslsmith_add_vec2_u32(vec2<u32>(0u, firstLeadingBit(~18292u)), (vec2<u32>(global0.d.x, 61300u) & ~global0.d.wz) >> (_wgslsmith_mult_vec2_u32(global0.d.yx, global0.b & vec2<u32>(8847u, global0.d.x)) % vec2<u32>(32u))), Struct_1(!global0.c.d.yz, u_input.d, !vec4<bool>(true, true, true, !global0.c.d.x), global0.c.c.ywz), vec4<u32>(0u, _wgslsmith_mod_u32(~1u, ~reverseBits(global0.c.b)), ~_wgslsmith_mod_u32(u_input.d, ~var_0.x), _wgslsmith_sub_u32(u_input.d, 43658u)), false);
}

fn func_7(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_2.a, global0.a), _wgslsmith_sub_vec2_i32(u_input.a.zx, vec2<i32>(57466i, 2147483647i))), -1i, func_1().a));
    var var_1 = firstLeadingBit(global0.d);
    var var_2 = Struct_2(func_4(func_1().c, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(global0.c.b, 21u)], global2[_wgslsmith_index_u32(u_input.d, 21u)]) * _wgslsmith_f_op_vec3_f32(min(global2[_wgslsmith_index_u32(arg_2.b.x >> (arg_2.d.x % 32u), 21u)], global2[_wgslsmith_index_u32(u_input.d, 21u)]))), Struct_2(arg_2.a, vec2<u32>(_wgslsmith_sub_u32(0u, u_input.d), u_input.d), func_1().c, reverseBits(~arg_2.d), func_1().e)), firstLeadingBit(~func_1().b) | abs(var_1.xz), func_6(_wgslsmith_clamp_vec2_i32(u_input.c >> (arg_3.yy % vec2<u32>(32u)), max(-arg_1.zx, vec2<i32>(17589i, -37538i)), arg_1.xx), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(338f, 1355f, -1296f, 599f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-519f, -935f, 1362f, -560f) + vec4<f32>(-440f, 1893f, -600f, -405f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1840f, -541f, 740f))))), arg_1.x, select(~var_1.yz >> (~vec2<u32>(u_input.d, arg_3.x) % vec2<u32>(32u)), countOneBits(~arg_2.d.zy), func_6(global3.wx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, -469f, -1122f, 428f)), ~14221i, vec2<u32>(var_1.x, u_input.d) & global0.b).a.x)), vec4<u32>(~(global0.b.x << (0u % 32u)) | abs(_wgslsmith_div_u32(arg_2.c.b, arg_3.x)), ~((4294967295u << (u_input.d % 32u)) | global0.d.x), global0.c.b, 1u << (_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(global0.d, vec4<u32>(arg_3.x, 12135u, 1u, 2703u))) % 32u)), arg_0.x);
    let var_3 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(50152u), 10281u), arg_2.b, arg_3.yz), var_1.yy), var_1.zw, abs(global0.d.zy));
    var var_4 = _wgslsmith_mod_u32(select(4294967295u, ~u_input.d, false), arg_3.x);
    return var_2.c;
}

fn func_8(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f)));
    global4 = global0.c.c.wyx;
    global3 = _wgslsmith_add_vec4_i32(abs(~_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, -2147483647i, 0i, 11747i), vec4<i32>(global0.a, -24911i, 58261i, global0.a)), ~vec4<i32>(global0.a, 0i, global0.a, u_input.b))), vec4<i32>(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-25777i, u_input.c.x), vec2<i32>(-23826i, global3.x)), vec2<i32>(-7024i, u_input.c.x)), global3.x, -19888i >> (func_6(vec2<i32>(global0.a, global0.a), vec4<f32>(979f, -606f, 1203f, -1204f), u_input.b, global0.b).b % 32u)) ^ countOneBits(min(firstTrailingBit(vec4<i32>(global0.a, global3.x, -53768i, global0.a)), -vec4<i32>(-2147483647i, 22463i, 0i, 25236i))));
    var var_1 = -func_4(Struct_1(select(vec2<bool>(true, arg_1.a.x), select(arg_0.xx, arg_0.yw, arg_0.x), vec2<bool>(global0.e, true)), global0.d.x, !vec4<bool>(true, true, arg_2.c.x, false), vec3<bool>(true, !arg_0.x, any(vec4<bool>(global0.c.c.x, global4.x, true, arg_1.d.x)))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-196f, 1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(765f + -1000f))), -1000f), func_1());
    var var_2 = func_7(select(arg_1.d.xy, !select(!vec2<bool>(arg_2.c.x, true), select(vec2<bool>(true, true), global4.yx, global0.c.c.yw), arg_0.wz), select(arg_1.c.x, global4.x || any(vec3<bool>(false, arg_1.a.x, arg_1.d.x)), any(select(global0.c.c, global0.c.c, global0.e)))), vec4<i32>(u_input.c.x, -75722i << ((arg_1.b ^ arg_1.b) % 32u), _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(global3.zxy, u_input.a, vec3<i32>(global0.a, global0.a, 0i)), -reverseBits(global3.xzx)), ~_wgslsmith_dot_vec2_i32(global3.yz, vec2<i32>(global3.x, 69212i))), func_1(), func_1().d.xwz);
    return !select(!(!func_6(vec2<i32>(global3.x, global0.a), vec4<f32>(-777f, -977f, -511f, 1019f), global0.a, vec2<u32>(global0.c.b, var_2.b)).a), vec2<bool>(!(arg_0.x && true), false), !arg_0.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    global1 = true;
    var var_1 = global0.c;
    let var_2 = func_8(var_1.c, func_7(vec2<bool>(true, any(vec3<bool>(true, true, true))), vec4<i32>(~(-7191i), ~global0.a, _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global0.a, u_input.b), u_input.a)), -2147483647i), func_1(), vec3<u32>(u_input.d, global0.c.b, _wgslsmith_clamp_u32(func_6(vec2<i32>(1i, global3.x), vec4<f32>(247f, -644f, -1117f, -1118f), u_input.c.x, vec2<u32>(u_input.d, u_input.d)).b, u_input.d, global0.d.x & global0.b.x))), func_6(-global3.zx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-276f, 425f, -1159f, -685f))), global3.x, abs(reverseBits(~global0.b))));
    global4 = global0.c.c.xzx;
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1838f, _wgslsmith_f_op_f32(select(-1164f, 1477f, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(695f, -832f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-475f, -2145f, 1302f))))));
    var var_4 = Struct_2(global3.x, global0.d.xw, Struct_1(var_1.d.zz, ~(global0.d.x & 0u) ^ func_7(vec2<bool>(global4.x, var_2.x), vec4<i32>(2147483647i, global3.x, u_input.c.x, 0i), Struct_2(global0.a, vec2<u32>(1u, 4294967295u), global0.c, global0.d, var_1.d.x), func_1().d.wzy).b, global0.c.c, vec3<bool>(!var_2.x, all(select(var_1.a, var_2, false)), global0.c.a.x)), select(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.b, global0.c.b, u_input.d, var_1.b), ~global0.d), vec4<u32>(global0.d.x, global0.d.x, 25152u, 115215u), var_1.c), any(global0.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.x, -130f, var_3.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(893f, var_3.x, -1203f), global2[_wgslsmith_index_u32(74693u, 21u)], true)))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_4.d.yyy << (vec3<u32>(var_4.b.x, var_4.d.x, 4294967295u) % vec3<u32>(32u)), firstLeadingBit(global0.d.xwx)), 21u)])), _wgslsmith_sub_vec3_i32(-global3.yyw, global3.ywy), vec2<u32>(~4294967295u, var_1.b));
}

