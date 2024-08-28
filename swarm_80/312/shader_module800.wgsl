struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 14>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, true, true));

var<private> global3: array<u32, 19>;

var<private> global4: vec4<bool>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = Struct_3(71260i, ~(~23857i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-310f, -1091f, false)), -296f, _wgslsmith_f_op_f32(-264f - -1590f))))), Struct_2(Struct_1(arg_0.a), vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.a, u_input.a), abs(min(u_input.a.x, 14178u)), ~countOneBits(4294967295u))), vec3<u32>(_wgslsmith_sub_u32(1u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(32692u, 19u)], u_input.a.x, 4294967295u, u_input.a.x), ~vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36623u, 19u)], 19u)], 22198u, 55660u)), 19u)]), 4294967295u, reverseBits(~reverseBits(31487u))));
    var var_1 = ~select(~(~max(1u, 1u)), ~(~27505u) ^ ~_wgslsmith_add_u32(4294967295u, u_input.a.x), var_0.d.a.a.x);
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(-(~(-6408i)), countOneBits(~reverseBits(1i)), min(26828i, reverseBits(~(-9725i))), var_0.b), reverseBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(8590i, var_0.a, -1i, 0i))));
    global4 = vec4<bool>(!arg_1.a.x, any(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1440f) >= _wgslsmith_f_op_f32(min(-505f, var_0.c.x)), !(!global2.a.x), false)), true, true);
    var var_3 = select(~vec4<u32>(_wgslsmith_add_u32(4294967295u, 1u & var_0.e.x), _wgslsmith_add_u32(~108577u, var_0.d.b.x), reverseBits(0u), ~19818u), select(~abs(vec4<u32>(4294967295u, 2007u, var_0.e.x, var_0.d.b.x)), ~(vec4<u32>(u_input.a.x, 1u, var_0.d.b.x, 30913u) | vec4<u32>(4294967295u, var_0.d.b.x, global3[_wgslsmith_index_u32(77133u, 19u)], 11357u)), _wgslsmith_f_op_f32(step(-658f, var_0.c.x)) > var_0.c.x) | ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.e.x, 19u)], 19u)], var_0.d.b.x) >> (vec4<u32>(1u, 48064u, 41368u, 0u) % vec4<u32>(32u)), ~vec4<u32>(39388u, var_0.d.b.x, var_0.e.x, u_input.a.x)), any(select(!(!vec3<bool>(true, true, global0.a.x)), vec3<bool>(global4.x, var_0.e.x > 66492u, true), any(vec3<bool>(false, global2.a.x, true)))));
    return vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(var_0.e.x), 19u)], 19u)], 0u, _wgslsmith_mod_u32(u_input.a.x | var_0.d.b.x, select(_wgslsmith_mult_u32(u_input.a.x, global3[_wgslsmith_index_u32(~130610u, 19u)]), ~0u, !(var_2.x == 0i))));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(global2.a), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 19u)], u_input.a.x, 4294967295u), vec3<u32>(10589u, u_input.a.x, 2547u)), ~global3[_wgslsmith_index_u32(u_input.a.x, 19u)], _wgslsmith_clamp_u32(1u, 8228u, global3[_wgslsmith_index_u32(u_input.a.x, 19u)])), vec3<u32>(13107u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(35757u, u_input.a.x, u_input.a.x, 12259u), vec4<u32>(u_input.a.x, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)])))) << (func_3(Struct_1(vec4<bool>(false, true, global2.a.x, true)), Struct_1(!global0.a), Struct_1(select(vec4<bool>(true, global2.a.x, true, global4.x), global2.a, true))) % vec3<u32>(32u)));
    global2 = var_0.a;
    global4 = !(!select(select(var_0.a.a, vec4<bool>(false, global0.a.x, false, global4.x), any(var_0.a.a.ww)), vec4<bool>(all(vec3<bool>(false, true, true)), true, var_0.a.a.x, false | var_0.a.a.x), true | !global0.a.x));
    var_0 = Struct_2(var_0.a, vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.b.x, global3[_wgslsmith_index_u32(6540u, 19u)])), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, global3[_wgslsmith_index_u32(var_0.b.x, 19u)]), var_0.b.xy)), abs(firstTrailingBit(70978u) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 75933u), vec3<u32>(30564u, 53486u, 36119u))), u_input.a.x));
    global3 = array<u32, 19>();
    return global0.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    global2 = arg_2;
    var var_0 = max(vec3<i32>(u_input.b.x, -2133i ^ select(_wgslsmith_div_i32(u_input.b.x, -1i), _wgslsmith_mod_i32(u_input.c.x, u_input.b.x), global0.a.x), -14721i), -vec3<i32>(u_input.c.x, (i32(-1i) * -1i) >> (_wgslsmith_add_u32(0u, u_input.a.x) % 32u), u_input.c.x));
    var var_1 = Struct_3(-(_wgslsmith_sub_i32(_wgslsmith_div_i32(-57079i, u_input.c.x), u_input.b.x) << (~arg_1 % 32u)), ~u_input.c.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(-1134f, arg_0.x, arg_0.x)), arg_0)), _wgslsmith_f_op_vec3_f32(ceil(arg_0)), !arg_2.a.wzy)), Struct_2(Struct_1(arg_2.a), vec3<u32>(select(0u, 9699u, global4.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, global3[_wgslsmith_index_u32(1u, 19u)]), vec2<u32>(arg_1, u_input.a.x)), countOneBits(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(128812u, 84329u, arg_1), vec3<u32>(arg_1, 28927u, u_input.a.x)), 19u)]), arg_1)), vec3<u32>(1u, 1u & u_input.a.x, global3[_wgslsmith_index_u32(abs(u_input.a.x), 19u)]));
    var var_2 = _wgslsmith_clamp_vec2_i32((~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, 14422i), vec2<i32>(var_0.x, u_input.b.x), vec2<i32>(2147483647i, var_0.x)) >> (vec2<u32>(51243u ^ arg_1, _wgslsmith_mult_u32(var_1.d.b.x, u_input.a.x)) % vec2<u32>(32u))) & (firstLeadingBit(var_0.xy) & -vec2<i32>(26767i, u_input.c.x)), firstLeadingBit(u_input.c.zx) ^ vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -44041i, i32(-1i) * -2686i), 0i), ~(-(vec2<i32>(u_input.b.x, var_0.x) & vec2<i32>(82101i, var_0.x))));
    global2 = arg_2;
    return Struct_3(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, var_0.x), ~u_input.b), (_wgslsmith_dot_vec2_i32(u_input.b, var_0.xy) >> (4294967295u % 32u)) ^ -_wgslsmith_add_i32(-65422i, var_2.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(select(30171i, -28511i, true), 81607i), var_0.yx) << (11881u % 32u), arg_0, var_1.d, _wgslsmith_div_vec3_u32(var_1.d.b, _wgslsmith_add_vec3_u32(var_1.e, _wgslsmith_div_vec3_u32(var_1.e, ~var_1.d.b))));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> Struct_2 {
    var var_0 = !select(select(select(select(vec4<bool>(false, global4.x, global2.a.x, false), global2.a, global4.x), !vec4<bool>(global0.a.x, global4.x, global0.a.x, global2.a.x), true), global2.a, _wgslsmith_clamp_u32(13769u, 1u, u_input.a.x) <= 0u), select(global0.a, select(vec4<bool>(global4.x, false, true, global0.a.x), vec4<bool>(true, true, global4.x, global4.x), all(vec2<bool>(false, global4.x))), global2.a), global0.a.x);
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2348f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(106f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2099f, 890f)) + 490f))), 0u, Struct_1(select(select(func_2(arg_0.x), global2.a, true), vec4<bool>(global2.a.x, true, global0.a.x, select(var_0.x, false, false)), true)));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(-1i, 23062i), _wgslsmith_mult_i32(-var_1.a, _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(arg_0.xzy, u_input.c)), global1[_wgslsmith_index_u32(61330u, 14u)])), u_input.b.x);
    let var_3 = var_1.d.b;
    var var_4 = !select(vec2<bool>(!(var_1.c.x > 876f), all(!global0.a.yww)), vec2<bool>(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, var_1.c.x, 1000f) * vec3<f32>(-240f, 746f, var_1.c.x)), 1u, var_1.d.a).d.a.a.x, global0.a.x), select(var_0.zw, select(func_2(arg_0.x).yw, var_0.zw, vec2<bool>(var_0.x, true)), var_1.d.a.a.x));
    return Struct_2(func_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(-548f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c.x))), 843f), _wgslsmith_mod_u32(1u, 1u), var_1.d.a).d.a, ~vec3<u32>(u_input.a.x >> (func_4(var_1.c, 24242u, var_1.d.a).e.x % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.d.b.x, arg_1, global3[_wgslsmith_index_u32(var_1.d.b.x, 19u)]), ~vec3<u32>(1u, 16180u, arg_1)), 1u));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(~u_input.c.x, _wgslsmith_mult_i32(~u_input.c.x, u_input.c.x << (arg_1.b.x % 32u)), -2147483647i >> (_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(1818u, 19u)], global3[_wgslsmith_index_u32(u_input.a.x, 19u)]) % 32u)), u_input.c, !global2.a.xyw), _wgslsmith_clamp_vec3_i32(firstLeadingBit(-(global1[_wgslsmith_index_u32(arg_1.b.x, 14u)] >> (arg_1.b % vec3<u32>(32u)))), -min(_wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 14u)], u_input.c), -vec3<i32>(27592i, u_input.b.x, u_input.b.x)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(50970u, ~_wgslsmith_mult_u32(50101u, u_input.a.x)), 14u)]));
    global1 = array<vec3<i32>, 14>();
    global3 = array<u32, 19>();
    let var_1 = func_1(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-(~vec4<i32>(-1i, 27106i, -30757i, u_input.c.x)), ~reverseBits(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.c.x))), -vec4<i32>(u_input.b.x, u_input.b.x, 0i, 0i) | (~vec4<i32>(-2147483647i, 18518i, u_input.b.x, 2147483647i) & vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.b.x))), ~_wgslsmith_clamp_u32(~1u, func_1(~vec4<i32>(u_input.c.x, u_input.b.x, u_input.c.x, u_input.b.x), 24466u | global3[_wgslsmith_index_u32(57628u, 19u)]).b.x, 1u)).a;
    var var_2 = Struct_2(Struct_1(vec4<bool>(true, arg_0.x == _wgslsmith_f_op_f32(arg_0.x + -1304f), global4.x, all(func_4(vec3<f32>(arg_0.x, arg_0.x, arg_2.x), u_input.a.x, Struct_1(vec4<bool>(global2.a.x, true, true, arg_1.a.a.x))).d.a.a.wyw))), vec3<u32>(_wgslsmith_mod_u32(~u_input.a.x, select(~global3[_wgslsmith_index_u32(0u, 19u)], ~21338u, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.b.x, 19u)], 19u)], arg_1.b.x, ~33933u, _wgslsmith_mod_u32(33401u, global3[_wgslsmith_index_u32(36765u, 19u)])), vec4<u32>(3724u, 1u, u_input.a.x, 0u | u_input.a.x)), ~arg_1.b.x));
    return var_1;
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    global0 = arg_3.d.a;
    global2 = arg_2.d.a;
    global4 = !func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_2.c.zy - arg_2.c.zz), _wgslsmith_f_op_vec2_f32(arg_2.c.yx + vec2<f32>(1017f, -1000f)))), _wgslsmith_f_op_vec2_f32(arg_3.c.yx * _wgslsmith_f_op_vec2_f32(arg_2.c.zy - vec2<f32>(1275f, 1340f)))), arg_1, vec4<f32>(arg_3.c.x, arg_2.c.x, 146f, _wgslsmith_f_op_f32(trunc(728f)))).a;
    var var_0 = func_1(~_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-12736i, arg_3.b, u_input.c.x, 2147483647i)), vec4<i32>(-55958i, 39642i, u_input.b.x, -1i) | vec4<i32>(7011i, arg_3.b, u_input.c.x, arg_2.a)), vec4<i32>(abs(u_input.c.x), -1i, u_input.b.x, max(1i, arg_2.b)), ~vec4<i32>(-1i, -45685i, 2147483647i, arg_2.b) >> (vec4<u32>(arg_1.b.x, 21243u, arg_2.e.x, arg_1.b.x) % vec4<u32>(32u))), ~_wgslsmith_add_u32(~_wgslsmith_clamp_u32(arg_2.e.x, u_input.a.x, arg_2.e.x), firstLeadingBit(_wgslsmith_add_u32(1u, 21905u)))).b.x;
    var var_1 = func_1(vec4<i32>(~37882i, u_input.b.x, -1i & abs(_wgslsmith_mod_i32(48266i, arg_3.a)), _wgslsmith_mod_i32(-arg_3.a, 34209i) << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(arg_2.e.x, 19u)], 0u), countOneBits(4294967295u)) % 32u)), arg_2.d.b.x << (_wgslsmith_div_u32(53221u, _wgslsmith_sub_u32(firstLeadingBit(7632u), 0u)) % 32u)).a.a.x;
    return Struct_1(arg_3.d.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(true, Struct_2(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(142f, -1000f), vec2<f32>(-341f, -1000f))), func_1(vec4<i32>(48925i, -6305i, u_input.c.x, u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(90061u, 63293u), vec2<u32>(u_input.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 19u)]))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1141f, 1467f, 280f, 2576f)), vec4<f32>(-225f, 638f, 305f, -727f)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a.x), max(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(97359u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], global3[_wgslsmith_index_u32(42381u, 19u)])), vec3<u32>(global3[_wgslsmith_index_u32(26558u, 19u)], 78063u, 0u) ^ vec3<u32>(global3[_wgslsmith_index_u32(71803u, 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(111790u, 19u)], 19u)], u_input.a.x)) >> (vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 1u), 62831u ^ global3[_wgslsmith_index_u32(u_input.a.x, 19u)], _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)) % vec3<u32>(32u))), func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1246f - -372f)), 193f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(305f + -651f) * _wgslsmith_f_op_f32(f32(-1f) * -102f))), 22915u, Struct_1(global2.a)), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(646f, 1116f, -232f), vec3<f32>(-451f, 1000f, -1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1949f, 2226f, 472f), vec3<f32>(-1263f, 1029f, 361f)), false & global2.a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1373f, 328f, 463f)))), 0u | (max(u_input.a.x, global3[_wgslsmith_index_u32(1u, 19u)]) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 19u)], 34091u, u_input.a.x), vec3<u32>(15834u, global3[_wgslsmith_index_u32(82261u, 19u)], 103528u)) % 32u)), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-168f, 963f, -911f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-198f, 188f, 894f))), ~28857u, Struct_1(vec4<bool>(false, global0.a.x, global2.a.x, global0.a.x))).d.a));
    var var_0 = Struct_1(vec4<bool>(global4.x, false, false, global2.a.x));
    global4 = select(vec4<bool>(_wgslsmith_f_op_f32(round(-172f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1505f - -990f), _wgslsmith_f_op_f32(f32(-1f) * -1658f)), !global4.x, !func_1(_wgslsmith_div_vec4_i32(vec4<i32>(70854i, u_input.b.x, u_input.c.x, 0i), vec4<i32>(7912i, u_input.b.x, u_input.c.x, u_input.c.x)), u_input.a.x << (u_input.a.x % 32u)).a.a.x, !(var_0.a.x && true) && func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-905f, -786f, 701f)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~20898u, 19u)], 19u)], Struct_1(vec4<bool>(global0.a.x, true, var_0.a.x, false))).d.a.a.x), vec4<bool>(!func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(695f, 306f, -1302f), vec3<f32>(-121f, 555f, -1349f))), ~u_input.a.x, Struct_1(vec4<bool>(false, global0.a.x, true, false))).d.a.a.x, false, _wgslsmith_dot_vec2_i32(max(u_input.c.xx, u_input.c.xx), ~vec2<i32>(1i, -1i)) < 2147483647i, true), var_0.a.x);
    var var_1 = any(vec3<bool>(!global2.a.x, func_2(func_4(vec3<f32>(534f, 259f, 200f), 4294967295u, Struct_1(var_0.a)).a).x, all(global0.a.yxy))) || (false | (_wgslsmith_mod_u32(23794u, _wgslsmith_clamp_u32(3373u, global3[_wgslsmith_index_u32(u_input.a.x, 19u)], 0u)) < _wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(u_input.a.x, u_input.a.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1640f, 127f, 476f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1848f, 1000f, 909f) * vec3<f32>(150f, 181f, -991f)), false)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1498f, 382f, 1325f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(318f)), _wgslsmith_f_op_f32(trunc(-463f)), -1392f) * vec3<f32>(1f, 1f, 1f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(267f, 555f, 1216f)))))));
    let var_3 = Struct_2(func_6(false, Struct_2(Struct_1(select(vec4<bool>(global2.a.x, true, true, var_0.a.x), var_0.a, vec4<bool>(global2.a.x, false, true, global0.a.x))), ~(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31940u, 19u)], 19u)], 4294967295u, u_input.a.x) >> (vec3<u32>(4294967295u, 4294967295u, u_input.a.x) % vec3<u32>(32u)))), func_4(_wgslsmith_f_op_vec3_f32(ceil(var_2)), global3[_wgslsmith_index_u32(u_input.a.x, 19u)], Struct_1(func_4(vec3<f32>(-812f, 293f, 347f), u_input.a.x, Struct_1(vec4<bool>(false, var_0.a.x, true, global4.x))).d.a.a)), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-257f, var_2.x, var_2.x)), u_input.a.x >> (_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 44665u, u_input.a.x) % 32u), func_1(vec4<i32>(26388i, u_input.b.x, 0i, u_input.c.x) >> (vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(28756u, 19u)], 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)], global3[_wgslsmith_index_u32(u_input.a.x, 19u)]) % vec4<u32>(32u)), max(2469u, 1u)).a)), ~func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1048f, var_2.x, var_2.x)), 1u, Struct_1(vec4<bool>(false, false, true, global2.a.x))).e);
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(vec4<i32>(min(u_input.b.x, -1i), u_input.b.x, _wgslsmith_div_i32(-24066i, -10019i), ~31405i)), -247f, _wgslsmith_div_vec3_u32(var_3.b, vec3<u32>(64970u, var_3.b.x >> (8485u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_3.b.x, 1u), var_3.b)) & abs(abs(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(var_3.b.x, 19u)], 4294967295u)))), _wgslsmith_clamp_vec2_u32(~u_input.a, ~_wgslsmith_add_vec2_u32(var_3.b.yx, vec2<u32>(u_input.a.x, 0u) << (vec2<u32>(var_3.b.x, 1u) % vec2<u32>(32u))), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1931f, var_2.x, var_2.x)), func_4(var_2, ~4294967295u, var_3.a).d.b.x, var_3.a).e.xx));
}

