struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<bool, 28>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(-1i, -39978i, 34285i, 26209i), 652f, vec2<i32>(27936i, i32(-2147483648)), i32(-2147483648), vec3<u32>(37772u, 4294967295u, 4294967295u)), Struct_1(vec4<i32>(i32(-2147483648), 24480i, 1i, -18484i), 161f, vec2<i32>(0i, -1i), 2147483647i, vec3<u32>(1u, 56359u, 4294967295u)), Struct_1(vec4<i32>(0i, -40884i, 2147483647i, -1i), -1286f, vec2<i32>(-16094i, 2147483647i), 2147483647i, vec3<u32>(10715u, 12763u, 30304u)), Struct_1(vec4<i32>(-1i, 20121i, 31530i, 1i), 321f, vec2<i32>(i32(-2147483648), 50833i), i32(-2147483648), vec3<u32>(64537u, 0u, 29056u)), Struct_1(vec4<i32>(0i, -44993i, i32(-2147483648), -30504i), 892f, vec2<i32>(1i, 0i), 2147483647i, vec3<u32>(4294967295u, 0u, 814u)));

var<private> global3: array<bool, 25> = array<bool, 25>(false, true, true, false, true, true, false, true, false, true, true, false, false, true, false, true, false, true, true, false, false, false, false, false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_3) -> vec4<f32> {
    let var_0 = true || all(!arg_1.zz);
    var var_1 = arg_2.b.x;
    var_1 = 23114i;
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0)))))));
    let var_2 = ~u_input.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-863f, 1f, _wgslsmith_f_op_f32(max(1303f, global2.e.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1067f, 275f, _wgslsmith_f_op_f32(step(arg_0.x, 567f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) * vec4<f32>(global2.a.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1175f))), -340f, 1354f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(global2.e, -firstTrailingBit(firstLeadingBit(global2.d.a)), _wgslsmith_f_op_f32(-global0.x), Struct_2(global2.a, global2.a, global2.e, Struct_1(global2.e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.c.b)) + _wgslsmith_f_op_f32(global2.e.b + -230f)), abs(global2.a.a.xy ^ global2.c.a.ww), u_input.a | global2.b.d, global2.a.e), Struct_1(select(global2.c.a << (vec4<u32>(29673u, 37035u, global2.e.e.x, global2.e.e.x) % vec4<u32>(32u)), global2.a.a, true), 396f, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 358i), vec2<i32>(-13606i, global2.d.c.x)), global2.a.d, ~global2.e.e)));
    var var_1 = ~(~(~4294967295u));
    let var_2 = global2.c;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1162f, global2.b.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1143f, -184f))))), vec3<bool>(true, true, global3[_wgslsmith_index_u32(global2.e.e.x, 25u)]), Struct_3(Struct_1(vec4<i32>(var_2.d, var_2.a.x, 41859i, -12548i), _wgslsmith_f_op_f32(min(515f, global2.a.b)), var_0.a.c, _wgslsmith_div_i32(34286i, var_0.d.d.a.x), var_2.e), vec4<i32>(24703i, 2147483647i, _wgslsmith_dot_vec3_i32(var_0.b.xzx, var_2.a.zwz), ~u_input.a), -1000f, var_0.d))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1385f, -216f, -1505f, 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -706f, -1161f, global2.e.b) + vec4<f32>(var_0.c, var_2.b, -120f, -667f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c))), _wgslsmith_f_op_f32(-global2.c.b), global2.e.b, -780f))));
    return global2.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(arg_3.a, func_2(), Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.b.d, -2147483647i, arg_2.a.a.x, arg_3.c.a.x), arg_3.c.a), firstTrailingBit(-arg_0.a)), -406f, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(func_2().a.yy, ~arg_3.a.a.wz, arg_2.d.b.a.yx), arg_2.d.b.c, ~arg_0.a.xy), _wgslsmith_sub_i32(6564i, max(44510i, arg_0.d)) | -1i, min(arg_3.e.e, _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global2.d.e.x, 1u), global2.a.e)) ^ _wgslsmith_add_vec3_u32(arg_3.d.e, vec3<u32>(71225u, 37609u, 0u) << (vec3<u32>(arg_0.e.x, arg_0.e.x, 0u) % vec3<u32>(32u)))), Struct_1(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(global2.c.a.x, u_input.a, 22391i, -1i)), arg_3.a.a), arg_3.c.b, global2.b.c >> (select(~global2.a.e.xy, arg_0.e.zz, global3[_wgslsmith_index_u32(1u, 25u)]) % vec2<u32>(32u)), select(-2633i, -2147483647i, global3[_wgslsmith_index_u32(min(~arg_2.a.e.x, max(arg_1.x, 2487u)), 25u)]), vec3<u32>(_wgslsmith_div_u32(arg_3.d.e.x, ~69482u), global2.d.e.x, ~58321u)), Struct_1(select(_wgslsmith_clamp_vec4_i32(arg_3.a.a, select(vec4<i32>(arg_3.b.c.x, 1765i, u_input.a, -2147483647i), vec4<i32>(arg_3.c.d, u_input.a, arg_2.d.a.d, 9990i), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_3.e.e.x, 28u)], global1[_wgslsmith_index_u32(global2.c.e.x, 28u)], true)), select(arg_2.b, global2.e.a, vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 28u)], false))), vec4<i32>(17422i, arg_0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d.e.a.x, 2147483647i, u_input.a, global2.a.d), arg_0.a), global2.b.a.x), true), 1f, vec2<i32>(0i, select(-18780i, arg_3.a.d, true)) << (min(~arg_1.xz, min(arg_0.e.yz, arg_2.d.e.e.yx)) % vec2<u32>(32u)), abs(global2.c.d), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, min(arg_1.x, arg_2.a.e.x), arg_2.a.e.x >> (5188u % 32u)), vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.xy, global2.d.e.yx), _wgslsmith_div_u32(1u, 1u), ~31578u))));
    var_0 = arg_3;
    global0 = _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-306f, 752f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.b, 800f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) - vec2<f32>(arg_3.d.b, arg_0.b)))))), !select(vec3<bool>(!global1[_wgslsmith_index_u32(1u, 28u)], all(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(0u, 25u)], false)), global1[_wgslsmith_index_u32(global2.b.e.x << (32364u % 32u), 28u)]), vec3<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(19058u, 25u)], true, true)), 23754u <= global2.c.e.x, true), select(select(vec3<bool>(global3[_wgslsmith_index_u32(arg_1.x, 25u)], global3[_wgslsmith_index_u32(arg_0.e.x, 25u)], global3[_wgslsmith_index_u32(arg_1.x, 25u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(1u, 28u)]), global1[_wgslsmith_index_u32(arg_0.e.x, 28u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(41431u, 28u)], global1[_wgslsmith_index_u32(arg_1.x, 28u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e.x, 1u), arg_1.xx), 25u)])), Struct_3(arg_2.a, global2.a.a | vec4<i32>(reverseBits(-28762i), _wgslsmith_clamp_i32(-7804i, -47208i, 9627i), -43883i, arg_3.d.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.b)), arg_2.d))).wy;
    global0 = vec2<f32>(arg_3.a.b, arg_2.a.b);
    var var_1 = global3[_wgslsmith_index_u32(~(~(~(~(global2.c.e.x << (4294967295u % 32u))))), 25u)];
    return global2.c;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_3(func_4(func_2(), vec3<u32>(1395u, 13538u, 1u), Struct_3(Struct_1(vec4<i32>(11619i, u_input.a, 2147483647i, arg_0), -139f, firstTrailingBit(global2.b.c), -35173i, ~global2.b.e), vec4<i32>(-2147483647i, arg_0, -arg_0, max(u_input.a, 13080i)), global2.d.b, Struct_2(global2.c, global2.d, global2.e, func_2(), global2.e)), Struct_2(func_2(), func_2(), global2.b, global2.c, func_2())), abs(vec4<i32>(global2.c.a.x, 47211i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, 2147483647i), 2147483647i | arg_0), arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b.b - -2120f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-602f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(220f, -683f))), true)), Struct_2(Struct_1(min(global2.c.a, vec4<i32>(u_input.a, 0i, 24735i, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)), vec2<i32>(_wgslsmith_mult_i32(-6785i, u_input.a), arg_0), ~5834i, countOneBits(~vec3<u32>(64991u, 4294967295u, 0u))), Struct_1(global2.a.a, 1250f, -global2.a.c, -4678i, ~(~vec3<u32>(global2.d.e.x, global2.c.e.x, global2.c.e.x))), global2.e, func_2(), func_4(func_4(func_2(), global2.d.e, Struct_3(Struct_1(vec4<i32>(-1i, arg_0, global2.c.d, 1i), global0.x, global2.e.c, u_input.a, vec3<u32>(74336u, 80280u, global2.d.e.x)), vec4<i32>(-37851i, u_input.a, 38699i, arg_0), global0.x, Struct_2(global2.c, Struct_1(vec4<i32>(0i, u_input.a, -64826i, u_input.a), global0.x, vec2<i32>(0i, -12884i), arg_0, vec3<u32>(global2.c.e.x, 1u, global2.d.e.x)), Struct_1(vec4<i32>(global2.e.a.x, u_input.a, -45894i, u_input.a), 1000f, global2.b.c, 10137i, global2.c.e), global2.d, Struct_1(global2.b.a, -1076f, global2.c.c, global2.d.d, vec3<u32>(global2.d.e.x, global2.a.e.x, 22379u)))), Struct_2(Struct_1(vec4<i32>(2147483647i, arg_0, u_input.a, arg_0), global2.a.b, global2.a.c, arg_0, vec3<u32>(0u, 4294967295u, global2.d.e.x)), Struct_1(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), global2.e.b, global2.c.a.xw, arg_0, vec3<u32>(16913u, global2.e.e.x, global2.d.e.x)), global2.c, Struct_1(vec4<i32>(-6416i, -12699i, global2.b.c.x, -2147483647i), global0.x, global2.e.a.xy, global2.d.d, vec3<u32>(global2.d.e.x, global2.c.e.x, 0u)), Struct_1(vec4<i32>(u_input.a, arg_0, -2147483647i, u_input.a), global0.x, vec2<i32>(-1i, arg_0), arg_0, global2.b.e))), func_4(global2.c, vec3<u32>(global2.d.e.x, 1u, global2.a.e.x), Struct_3(Struct_1(vec4<i32>(20295i, -1328i, u_input.a, u_input.a), 1000f, global2.e.c, u_input.a, global2.e.e), global2.e.a, -1062f, Struct_2(Struct_1(global2.e.a, -384f, vec2<i32>(16143i, u_input.a), u_input.a, global2.d.e), global2.d, global2.a, Struct_1(vec4<i32>(arg_0, -22825i, 16568i, -18793i), -684f, vec2<i32>(2147483647i, 0i), -1i, vec3<u32>(0u, global2.b.e.x, 0u)), Struct_1(global2.d.a, global0.x, vec2<i32>(arg_0, 1i), arg_0, global2.e.e))), Struct_2(Struct_1(global2.a.a, 1000f, global2.a.c, 0i, global2.d.e), global2.c, global2.a, global2.a, Struct_1(global2.d.a, global0.x, vec2<i32>(0i, -60141i), 2147483647i, vec3<u32>(7865u, 0u, 1u)))).e, Struct_3(func_4(global2.c, global2.c.e, Struct_3(global2.e, global2.b.a, global2.b.b, Struct_2(global2.d, Struct_1(global2.c.a, 330f, global2.c.c, u_input.a, vec3<u32>(global2.c.e.x, global2.d.e.x, 58833u)), Struct_1(global2.c.a, global2.d.b, global2.a.c, 0i, vec3<u32>(global2.c.e.x, 24203u, 4294967295u)), global2.e, Struct_1(global2.b.a, global2.e.b, vec2<i32>(arg_0, arg_0), u_input.a, vec3<u32>(44781u, 56366u, global2.c.e.x)))), Struct_2(global2.b, Struct_1(global2.e.a, global2.b.b, global2.b.a.yx, arg_0, vec3<u32>(53121u, 1u, global2.d.e.x)), global2.a, global2.a, Struct_1(global2.d.a, 1000f, global2.a.a.yz, global2.c.c.x, global2.d.e))), select(global2.a.a, vec4<i32>(arg_0, 0i, -23016i, u_input.a), vec4<bool>(global1[_wgslsmith_index_u32(85785u, 28u)], global1[_wgslsmith_index_u32(global2.b.e.x, 28u)], true, false)), _wgslsmith_f_op_f32(global0.x - global2.e.b), Struct_2(global2.b, Struct_1(global2.d.a, global0.x, global2.b.a.yw, arg_0, vec3<u32>(global2.a.e.x, 1u, global2.d.e.x)), Struct_1(global2.c.a, 1928f, global2.d.c, global2.c.d, global2.a.e), global2.b, global2.a)), Struct_2(func_2(), func_2(), Struct_1(vec4<i32>(0i, global2.c.d, 1i, global2.e.c.x), 611f, global2.a.c, arg_0, vec3<u32>(global2.d.e.x, global2.c.e.x, global2.d.e.x)), func_2(), Struct_1(global2.e.a, 805f, global2.c.a.yx, arg_0, global2.a.e)))));
    var var_1 = _wgslsmith_mult_u32(66832u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.d.b.e.yz, min(global2.d.e.yy, var_0.a.e.yx)), global2.b.e.yy));
    var_0 = Struct_3(Struct_1(firstLeadingBit(vec4<i32>(116158i, u_input.a, 0i, var_0.a.a.x) ^ global2.e.a) & _wgslsmith_div_vec4_i32(~global2.d.a, _wgslsmith_clamp_vec4_i32(var_0.a.a, var_0.a.a, vec4<i32>(var_0.a.a.x, 0i, global2.a.d, var_0.d.a.c.x))), 1143f, var_0.a.c, var_0.d.c.c.x, global2.c.e), vec4<i32>(~(i32(-1i) * -1i), min(-20402i, 75236i), global2.c.d, -19789i), 169f, Struct_2(func_4(global2.e, func_2().e, Struct_3(func_2(), _wgslsmith_clamp_vec4_i32(var_0.a.a, var_0.d.b.a, var_0.d.b.a), _wgslsmith_f_op_f32(-666f * 1541f), Struct_2(global2.a, Struct_1(global2.e.a, global0.x, global2.e.a.yx, 1i, global2.d.e), global2.d, Struct_1(var_0.a.a, global2.a.b, global2.b.c, arg_0, vec3<u32>(var_0.a.e.x, 4294967295u, 12395u)), Struct_1(vec4<i32>(var_0.b.x, u_input.a, u_input.a, u_input.a), global0.x, var_0.a.c, arg_0, vec3<u32>(43503u, 4294967295u, global2.b.e.x)))), Struct_2(func_2(), var_0.a, func_4(var_0.d.e, var_0.d.c.e, Struct_3(Struct_1(var_0.b, 896f, vec2<i32>(-2147483647i, 1i), global2.e.d, vec3<u32>(global2.c.e.x, var_0.a.e.x, var_0.d.e.e.x)), vec4<i32>(81383i, 32001i, global2.e.c.x, 0i), -200f, Struct_2(Struct_1(var_0.b, -1838f, var_0.d.b.a.wx, var_0.d.a.a.x, var_0.a.e), var_0.d.a, global2.c, Struct_1(global2.d.a, 747f, global2.b.c, global2.b.d, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(var_0.a.a, var_0.c, var_0.d.c.c, arg_0, vec3<u32>(4294967295u, global2.a.e.x, 1u)))), var_0.d), func_2(), global2.a)), Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, var_0.b.x, 9530i, -2147483647i), vec4<i32>(global2.a.c.x, 20155i, 31972i, var_0.a.c.x)), vec4<i32>(global2.a.a.x, 59871i, var_0.b.x, 0i)), global2.c.b, ~global2.a.a.yz, i32(-1i) * -872i, global2.e.e), var_0.a, func_4(var_0.d.a, global2.a.e, Struct_3(func_4(Struct_1(vec4<i32>(-2119i, -13072i, u_input.a, 2147483647i), -1639f, global2.b.c, var_0.d.b.c.x, vec3<u32>(var_0.a.e.x, var_0.d.e.e.x, 1u)), global2.b.e, Struct_3(var_0.a, var_0.d.b.a, 596f, Struct_2(var_0.d.d, Struct_1(vec4<i32>(global2.e.c.x, arg_0, -1i, 2147483647i), global0.x, vec2<i32>(0i, u_input.a), global2.c.c.x, vec3<u32>(var_0.a.e.x, global2.b.e.x, 1u)), Struct_1(vec4<i32>(1i, 2147483647i, u_input.a, 1i), global0.x, global2.e.c, arg_0, global2.a.e), Struct_1(var_0.d.c.a, -1299f, var_0.b.wx, arg_0, global2.c.e), Struct_1(vec4<i32>(13444i, 0i, 40452i, -1i), global0.x, vec2<i32>(global2.d.d, arg_0), arg_0, var_0.d.b.e))), var_0.d), vec4<i32>(global2.a.c.x, u_input.a, -2147483647i, -2147483647i), _wgslsmith_f_op_f32(round(global2.e.b)), var_0.d), var_0.d), var_0.d.a));
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(abs(-global2.d.a), global2.d.a), -996f, func_4(Struct_1(func_2().a, func_2().b, _wgslsmith_div_vec2_i32(var_0.b.xx, vec2<i32>(arg_0, u_input.a)), -26301i, select(global2.d.e, global2.a.e, vec3<bool>(global1[_wgslsmith_index_u32(2746u, 28u)], global1[_wgslsmith_index_u32(62701u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]))), var_0.a.e, Struct_3(func_4(var_0.d.e, var_0.a.e, Struct_3(Struct_1(vec4<i32>(1i, 2147483647i, global2.e.a.x, u_input.a), global2.b.b, var_0.d.a.a.zz, 2147483647i, vec3<u32>(global2.e.e.x, global2.b.e.x, global2.b.e.x)), global2.a.a, global0.x, Struct_2(Struct_1(global2.c.a, -931f, global2.c.a.zx, -17796i, var_0.d.e.e), Struct_1(vec4<i32>(global2.e.a.x, 1i, -1i, var_0.b.x), 369f, vec2<i32>(u_input.a, 21099i), -52696i, global2.d.e), Struct_1(vec4<i32>(var_0.a.a.x, global2.a.c.x, arg_0, -1i), var_0.c, vec2<i32>(-22534i, 20985i), u_input.a, var_0.d.c.e), global2.c, global2.a)), Struct_2(Struct_1(vec4<i32>(u_input.a, 76502i, arg_0, arg_0), global0.x, global2.d.a.yx, arg_0, vec3<u32>(var_0.a.e.x, 0u, global2.e.e.x)), var_0.d.c, var_0.a, global2.b, global2.c)), func_2().a, global0.x, var_0.d), Struct_2(func_4(global2.d, vec3<u32>(1u, 1u, 46666u), Struct_3(Struct_1(global2.c.a, -1000f, var_0.b.zy, -2147483647i, vec3<u32>(var_0.a.e.x, 1u, 84298u)), var_0.a.a, -558f, Struct_2(global2.d, var_0.d.c, Struct_1(vec4<i32>(2147483647i, arg_0, -13711i, 42564i), global2.b.b, vec2<i32>(arg_0, -85509i), 0i, vec3<u32>(global2.d.e.x, global2.b.e.x, 14589u)), var_0.a, Struct_1(var_0.b, global2.a.b, var_0.a.a.xz, 2147483647i, global2.e.e))), Struct_2(var_0.a, Struct_1(vec4<i32>(var_0.a.c.x, arg_0, 1i, global2.b.d), var_0.a.b, var_0.a.a.wy, global2.a.a.x, global2.c.e), Struct_1(vec4<i32>(u_input.a, 1i, global2.e.c.x, 5758i), global2.b.b, vec2<i32>(u_input.a, 2147483647i), u_input.a, global2.c.e), Struct_1(global2.a.a, var_0.a.b, global2.b.c, 2147483647i, vec3<u32>(global2.e.e.x, 22495u, var_0.d.e.e.x)), var_0.a)), Struct_1(global2.c.a, var_0.c, global2.b.c, 2147483647i, global2.d.e), Struct_1(global2.e.a, global2.d.b, var_0.b.zy, 0i, vec3<u32>(30379u, 37771u, 131737u)), Struct_1(vec4<i32>(global2.e.c.x, u_input.a, 87990i, -19350i), 1000f, vec2<i32>(var_0.a.c.x, global2.c.d), 2147483647i, global2.a.e), Struct_1(var_0.a.a, -1000f, vec2<i32>(10844i, -1i), arg_0, vec3<u32>(4294967295u, var_0.a.e.x, var_0.d.c.e.x)))).a.wz, u_input.a, ~var_0.a.e), Struct_1(vec4<i32>(~(u_input.a & 2147483647i), min(var_0.d.d.a.x, ~arg_0), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 1i, 1i, 54308i), global2.b.a), abs(1i)), _wgslsmith_f_op_f32(var_0.d.e.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1622f - -342f) - _wgslsmith_div_f32(-287f, 2204f))), global2.b.c, -9142i | u_input.a, vec3<u32>(var_0.d.d.e.x << ((var_0.d.c.e.x << (2762u % 32u)) % 32u), 26804u, min(global2.d.e.x, 4294967295u) << ((global2.c.e.x ^ global2.e.e.x) % 32u))), func_2(), var_0.a, func_2());
    global1 = array<bool, 28>();
    return var_2.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(arg_0.d.a, _wgslsmith_f_op_f32(-arg_1.c.b), ~(-vec2<i32>(arg_1.c.c.x, global2.a.a.x)), ~firstLeadingBit(countOneBits(arg_0.c.c.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(20604u, 1u), vec2<u32>(global2.a.e.x, 35842u)), arg_1.d.e.x, ~1u) >> (abs(_wgslsmith_sub_vec3_u32(arg_1.d.e, global2.c.e)) % vec3<u32>(32u))), _wgslsmith_sub_vec4_i32(-arg_1.b.a, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(arg_1.d.a, -arg_0.a.a), ~(vec4<i32>(global2.e.c.x, arg_0.e.c.x, 21680i, 26035i) | vec4<i32>(arg_1.c.d, global2.e.c.x, global2.c.d, u_input.a)))), -1059f, Struct_2(arg_1.c, Struct_1(_wgslsmith_sub_vec4_i32(arg_0.a.a >> (vec4<u32>(0u, global2.c.e.x, 101463u, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, global2.d.c.x, 2147483647i, 4201i), vec4<i32>(u_input.a, 21464i, 0i, -2147483647i))), -1002f, abs(~arg_1.c.a.zx), arg_0.a.c.x, ~func_4(global2.b, vec3<u32>(arg_0.d.e.x, arg_1.b.e.x, 1u), Struct_3(arg_1.d, arg_0.b.a, 147f, Struct_2(Struct_1(arg_1.d.a, arg_1.d.b, arg_1.a.a.zz, 2147483647i, vec3<u32>(4294967295u, arg_0.b.e.x, global2.d.e.x)), global2.d, Struct_1(global2.d.a, 587f, arg_1.b.c, -18008i, arg_1.a.e), global2.a, arg_0.a)), arg_1).e), Struct_1(func_1(-1i).a, func_4(arg_1.e, vec3<u32>(arg_0.b.e.x, arg_0.c.e.x, 1u), Struct_3(arg_1.c, arg_0.d.a, arg_2, Struct_2(Struct_1(vec4<i32>(global2.c.c.x, u_input.a, u_input.a, global2.b.d), -189f, arg_1.b.a.wz, -2147483647i, global2.d.e), Struct_1(global2.a.a, -114f, arg_0.a.c, 42021i, vec3<u32>(1u, arg_0.d.e.x, global2.d.e.x)), global2.c, global2.b, Struct_1(vec4<i32>(0i, global2.d.d, arg_1.a.d, arg_0.b.c.x), arg_0.c.b, vec2<i32>(global2.d.d, arg_0.b.c.x), u_input.a, arg_0.e.e))), arg_1).b, arg_0.c.c, u_input.a, arg_1.a.e | vec3<u32>(arg_0.d.e.x, 19927u, arg_1.c.e.x)), arg_1.d, func_4(Struct_1(global2.a.a >> (vec4<u32>(4294967295u, 15553u, 0u, global2.e.e.x) % vec4<u32>(32u)), global2.c.b, _wgslsmith_div_vec2_i32(vec2<i32>(8073i, 22938i), vec2<i32>(-2147483647i, u_input.a)), arg_1.b.c.x, vec3<u32>(arg_1.e.e.x, arg_1.b.e.x, 4294967295u)), vec3<u32>(15933u, 63462u, ~arg_1.c.e.x), Struct_3(Struct_1(vec4<i32>(arg_1.b.d, 1i, global2.a.d, -1i), arg_0.e.b, vec2<i32>(-28544i, 0i), u_input.a, vec3<u32>(0u, 7515u, 1u)), -global2.d.a, arg_0.b.b, arg_1), Struct_2(func_4(arg_1.b, arg_1.d.e, Struct_3(Struct_1(global2.c.a, arg_0.b.b, vec2<i32>(arg_1.e.d, arg_1.a.d), 1i, arg_1.b.e), vec4<i32>(1i, 31513i, global2.c.c.x, u_input.a), -952f, arg_0), arg_0), func_2(), func_1(u_input.a), global2.c, global2.b))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(var_0.a.a, max(vec4<i32>(0i, -58625i, 1i, global2.a.a.x) >> (vec4<u32>(global2.c.e.x, 37925u, arg_1.a.e.x, 0u) % vec4<u32>(32u)), arg_1.a.a)), func_1(abs(firstLeadingBit(var_0.a.a.x))).b, abs(arg_1.e.a.zx), arg_0.d.c.x, vec3<u32>(~_wgslsmith_div_u32(60266u, 4294967295u), 1u, reverseBits(~7842u))), arg_1.e, arg_1.b, Struct_1(vec4<i32>(func_2().c.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(global2.c.a, var_0.a.a), _wgslsmith_mult_i32(var_0.b.x, u_input.a)), func_4(arg_0.c, arg_1.b.e, Struct_3(Struct_1(vec4<i32>(var_0.d.d.d, var_0.d.a.a.x, arg_1.c.c.x, -2147483647i), 113f, vec2<i32>(global2.a.c.x, -1i), 2147483647i, vec3<u32>(4294967295u, arg_0.e.e.x, arg_1.a.e.x)), arg_0.b.a, -988f, arg_0), Struct_2(arg_0.e, Struct_1(arg_1.c.a, -441f, arg_0.a.a.xw, var_0.b.x, var_0.a.e), arg_1.e, var_0.d.d, Struct_1(arg_0.a.a, arg_2, vec2<i32>(arg_0.d.a.x, 2147483647i), 87i, var_0.d.a.e))).d ^ -18696i, arg_1.a.c.x), _wgslsmith_f_op_f32(-arg_0.d.b), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.d >> (2323u % 32u), 47245i & arg_1.b.a.x), vec2<i32>(1i, max(arg_1.c.a.x, global2.a.c.x))), 2147483647i, ~arg_0.a.e), arg_1.d);
    let var_2 = global0.x;
    let var_3 = var_1;
    global2 = Struct_2(global2.d, var_0.d.c, Struct_1(-func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b)), firstLeadingBit(~var_0.a.a.wz | _wgslsmith_div_vec2_i32(var_1.e.c, global2.d.c)), var_3.a.c.x, firstTrailingBit(min(~var_1.d.e, _wgslsmith_sub_vec3_u32(var_0.a.e, var_3.a.e)))), global2.b, global2.b);
    return Struct_2(Struct_1(var_1.c.a, var_3.c.b, _wgslsmith_clamp_vec2_i32(-vec2<i32>(0i, 10523i), ~vec2<i32>(12546i, var_1.b.a.x), -vec2<i32>(arg_0.c.a.x, -21556i)) & var_1.e.c, 2147483647i ^ (func_2().c.x >> (var_1.b.e.x % 32u)), vec3<u32>(1u, var_3.e.e.x, ~func_2().e.x)), Struct_1(_wgslsmith_mod_vec4_i32(~vec4<i32>(-34725i, 0i, 8572i, var_0.b.x), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-2147483647i, global2.e.c.x, arg_1.b.a.x, 14385i)), vec4<i32>(global2.b.d, var_1.b.d, -7812i, arg_0.a.d), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.d.d, 15588i, u_input.a, 0i), arg_1.e.a))), func_2().b, reverseBits(arg_1.e.a.xy), ~_wgslsmith_mult_i32(arg_0.c.a.x | var_3.b.c.x, var_0.a.a.x), abs(_wgslsmith_div_vec3_u32(~arg_0.b.e, ~arg_1.a.e))), var_0.d.a, Struct_1(abs(_wgslsmith_clamp_vec4_i32(func_4(arg_1.e, vec3<u32>(4294967295u, 6426u, 48141u), Struct_3(global2.b, vec4<i32>(-36348i, -38262i, var_3.d.d, -46517i), -191f, Struct_2(var_1.c, Struct_1(vec4<i32>(arg_1.b.c.x, u_input.a, -1i, global2.d.d), var_1.e.b, arg_0.a.c, var_3.e.c.x, arg_1.e.e), Struct_1(var_1.c.a, 650f, vec2<i32>(-32257i, var_1.a.d), var_1.a.d, vec3<u32>(0u, var_1.a.e.x, 4294967295u)), Struct_1(vec4<i32>(1i, -2818i, 21856i, 37668i), -708f, vec2<i32>(-944i, -2147483647i), 60871i, global2.d.e), var_1.c)), Struct_2(global2.c, Struct_1(var_3.a.a, -597f, arg_1.d.a.xw, arg_0.c.a.x, arg_0.b.e), Struct_1(arg_1.b.a, 402f, arg_0.a.a.yw, u_input.a, var_1.e.e), Struct_1(global2.d.a, arg_0.d.b, vec2<i32>(-39500i, -2147483647i), 30047i, vec3<u32>(3682u, 5109u, var_1.a.e.x)), arg_0.c)).a, ~arg_0.a.a, ~vec4<i32>(arg_1.b.a.x, arg_0.e.c.x, 0i, var_0.b.x))), arg_0.c.b, min(var_3.e.a.wy, _wgslsmith_sub_vec2_i32(arg_1.d.a.yx, vec2<i32>(31197i, global2.b.a.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -54403i) | var_0.d.a.a.ww, ~vec2<i32>(global2.a.a.x, 0i)) >> (global2.c.e.x % 32u), var_3.b.e << (global2.e.e % vec3<u32>(32u))), func_4(Struct_1(vec4<i32>(-1i) * -vec4<i32>(-8915i, 1i, global2.c.c.x, 0i), _wgslsmith_f_op_f32(f32(-1f) * -927f), global2.c.c, ~(var_3.a.a.x >> (75628u % 32u)), ~select(arg_1.b.e, var_3.d.e, vec3<bool>(true, global1[_wgslsmith_index_u32(10580u, 28u)], global3[_wgslsmith_index_u32(8383u, 25u)]))), min(~arg_1.b.e, vec3<u32>(max(var_0.d.a.e.x, var_0.d.d.e.x), 1u, countOneBits(global2.a.e.x))), Struct_3(Struct_1(-var_3.a.a, _wgslsmith_f_op_f32(-arg_1.d.b), _wgslsmith_add_vec2_i32(vec2<i32>(global2.a.a.x, var_0.b.x), global2.a.a.xx), firstLeadingBit(u_input.a), max(vec3<u32>(2737u, 56863u, arg_0.b.e.x), arg_1.b.e)), -var_3.b.a & -var_3.c.a, var_0.d.c.b, var_3), var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1867f;
    var var_1 = false;
    let var_2 = func_5(Struct_2(global2.a, func_1(12222i), global2.d, global2.c, func_2()), Struct_2(func_1(20045i), Struct_1(global2.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_div_f32(835f, -515f)), global2.d.c, global2.e.d, global2.d.e), func_1(i32(-1i) * -global2.e.a.x), global2.d, func_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.e.c.x, u_input.a, global2.c.c.x, u_input.a), global2.a.a), _wgslsmith_mod_vec4_i32(global2.b.a, global2.a.a)))), global2.d.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e.b, global0.x))))));
    let var_4 = _wgslsmith_div_f32(-2058f, func_5(func_5(var_2, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b * -697f))), var_2, global2.c.b).a.b);
    var var_5 = all(vec4<bool>(all(!(!vec4<bool>(global1[_wgslsmith_index_u32(3033u, 28u)], global1[_wgslsmith_index_u32(var_2.c.e.x, 28u)], false, global1[_wgslsmith_index_u32(global2.e.e.x, 28u)]))), all(!vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(336u, 28u)], true)), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(1u, var_2.d.e.x, 16208u), vec3<u32>(1u, global2.a.e.x, global2.a.e.x)), ~global2.c.e, vec3<u32>(global2.a.e.x, var_2.e.e.x, 4294967295u)) ^ vec3<u32>(19570u, func_4(Struct_1(vec4<i32>(var_2.b.d, u_input.a, u_input.a, 33011i), var_3.x, global2.a.a.zz, -2147483647i, vec3<u32>(global2.a.e.x, var_2.e.e.x, global2.e.e.x)), var_2.d.e, Struct_3(Struct_1(vec4<i32>(0i, u_input.a, -2147483647i, var_2.b.c.x), var_3.x, vec2<i32>(global2.c.d, 0i), global2.a.d, global2.c.e), global2.b.a, global2.c.b, Struct_2(Struct_1(vec4<i32>(-8796i, u_input.a, 23148i, 73002i), var_4, global2.a.c, global2.d.c.x, vec3<u32>(global2.e.e.x, var_2.e.e.x, global2.d.e.x)), var_2.a, var_2.c, Struct_1(var_2.c.a, global2.c.b, vec2<i32>(54480i, 1i), -6897i, var_2.a.e), var_2.e)), var_2).e.x, global2.c.e.x)), var_3.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(min(var_4, -827f)), -1000f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1422f, global2.c.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-150f, 1504f) - vec2<f32>(var_3.x, -706f)))))), select(func_1(-1i).a, global2.d.a, !(!vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(13989u, 28u)]))), 13752u);
}

