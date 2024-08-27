struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 29856i, 35393i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> bool {
    global0 = abs(~(-reverseBits(vec3<i32>(global0.x, arg_0.a.b, u_input.a.x))));
    global0 = ~vec3<i32>(u_input.a.x, 13493i, -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0.x), vec2<i32>(0i, -2147483647i)));
    global0 = vec3<i32>(1i << (~min(~4294967295u, arg_0.b) % 32u), ~(-_wgslsmith_sub_i32(~(-41175i), global0.x ^ 0i)), _wgslsmith_mod_i32(1i, min(_wgslsmith_dot_vec2_i32(reverseBits(global0.yy), ~vec2<i32>(-18308i, global0.x)), -12753i)));
    global0 = min(vec3<i32>(u_input.a.x, ~4235i, abs(reverseBits(_wgslsmith_mult_i32(global0.x, 2147483647i)))), ~reverseBits(vec3<i32>(-22797i, 76063i, 0i) & vec3<i32>(u_input.a.x, global0.x, -19432i)));
    let var_0 = Struct_4(max(-(countOneBits(vec3<i32>(u_input.a.x, -37108i, 37363i)) ^ vec3<i32>(21991i, 17200i, global0.x)), vec3<i32>(-46459i, _wgslsmith_mult_i32(14750i, -8369i), -2147483647i) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b, arg_0.b), _wgslsmith_mod_vec3_u32(vec3<u32>(72351u, arg_0.b, 1u), vec3<u32>(1u, arg_0.b, u_input.b))) % vec3<u32>(32u))), Struct_2(vec4<f32>(arg_1, arg_1, -265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.d.x) + _wgslsmith_f_op_f32(step(arg_1, arg_1)))), Struct_1(vec2<bool>(select(arg_0.a.a.x, arg_0.a.a.x, false), all(vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.c.x))), i32(-1i) * -1i, select(select(vec4<bool>(true, false, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, false), arg_0.a.c.x), arg_0.a.c, vec4<bool>(true, arg_0.a.c.x, false, true)), vec2<f32>(arg_1, _wgslsmith_f_op_f32(ceil(-1189f)))), arg_0.a, -960f), vec4<bool>(arg_0.a.c.x, any(!(!arg_0.a.c.yx)), arg_0.a.a.x, any(!arg_0.a.c.xz)));
    return any(select(vec2<bool>(any(vec4<bool>(arg_0.a.c.x, true, var_0.b.b.a.x, arg_0.a.a.x)), !(-1073f > arg_0.a.d.x)), arg_0.a.c.xz, arg_0.a.a));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.x, _wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, firstLeadingBit(arg_0.x), 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(33548i, 2147483647i, u_input.a.x, -1i), _wgslsmith_mult_vec4_i32(-vec4<i32>(21871i, arg_0.x, -24950i, -2147483647i), -vec4<i32>(77168i, global0.x, 0i, u_input.a.x)))), ~(~u_input.c), Struct_4(-(abs(vec3<i32>(2147483647i, arg_0.x, arg_0.x)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.a.x, arg_0.x), arg_0)), Struct_2(vec4<f32>(-1167f, _wgslsmith_f_op_f32(2043f - -1541f), 450f, _wgslsmith_f_op_f32(f32(-1f) * -624f)), Struct_1(vec2<bool>(true, true), -u_input.a.x, vec4<bool>(true, true, true, true), vec2<f32>(-1064f, -752f)), Struct_1(vec2<bool>(true, true), ~u_input.a.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-851f, 1000f) - vec2<f32>(500f, -1068f))), -448f), vec4<bool>(true, !func_3(Struct_3(Struct_1(vec2<bool>(false, true), arg_0.x, vec4<bool>(false, true, false, true), vec2<f32>(528f, 1000f)), u_input.b), -1083f), all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), !(u_input.b <= 7853u))));
    let var_1 = var_0.e.b;
    var var_2 = Struct_2(vec4<f32>(112f, _wgslsmith_f_op_f32(step(324f, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-var_1.c.d.x)))), var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-926f * -1000f), _wgslsmith_f_op_f32(min(var_1.a.x, var_0.e.b.b.d.x))))))), var_1.b, var_0.e.b.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(var_1.c.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -640f))))));
    global0 = -select(-reverseBits(~var_0.c.xzz), vec3<i32>(-51626i, ~var_0.b, _wgslsmith_mult_i32(-1i, global0.x)) >> (~(vec3<u32>(u_input.c.x, 0u, 137273u) << (vec3<u32>(2652u, 5332u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), select(!vec3<bool>(false, var_0.e.b.b.c.x, false), !select(var_2.c.c.ywy, vec3<bool>(var_1.b.a.x, var_0.e.c.x, true), var_2.b.c.zwx), vec3<bool>(true, true, true)));
    var var_3 = var_1.b;
    return var_0.e.b.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec4<i32> {
    global0 = select(vec3<i32>(-arg_2.c.b, ~global0.x, -2147483647i << (u_input.c.x % 32u)) & _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -27915i, arg_1.c.b), vec3<i32>(38961i, 47436i, arg_2.b.b)), vec3<i32>(arg_2.b.b, arg_2.c.b, 19444i) ^ vec3<i32>(arg_2.b.b, arg_2.b.b, global0.x)), countOneBits((vec3<i32>(arg_2.b.b, global0.x, -38684i) >> (vec3<u32>(19622u, u_input.c.x, 4294967295u) % vec3<u32>(32u))) | vec3<i32>(global0.x, 14088i, arg_2.c.b)), all(func_2(countOneBits(vec3<i32>(2147483647i, 0i, 0i))).c)) | select(~vec3<i32>(57550i, -11796i, 0i), (vec3<i32>(-1i) * -vec3<i32>(0i, 30677i, 1i)) >> (_wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, u_input.c.x, 28741u), vec3<u32>(4294967295u, u_input.b, u_input.b), arg_0.zww), countOneBits(vec3<u32>(u_input.c.x, 1u, 12301u)), ~vec3<u32>(u_input.b, 37482u, u_input.c.x)) % vec3<u32>(32u)), max(27302u, u_input.c.x) >= 50840u);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1546f * arg_1.b.d.x) - 237f);
    global0 = select(~(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, global0.x, -1i), -vec3<i32>(-2147483647i, 1i, arg_1.c.b)) ^ vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(global0.xy, global0.xx), i32(-1i) * -90490i)), vec3<i32>(select(~1i, -4090i, false), arg_2.c.b, ~1384i), !(!select(arg_1.c.c.wwz, !vec3<bool>(true, arg_0.x, arg_0.x), arg_1.b.c.yyx)));
    global0 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(arg_2.c.b, 0i, u_input.a.x)), _wgslsmith_add_vec3_i32(-max(vec3<i32>(-1i, 2147483647i, arg_1.c.b), vec3<i32>(-38656i, 1834i, global0.x)), ~(~vec3<i32>(u_input.a.x, -2147483647i, -1i)))), vec3<i32>(-1i, -2759i, 2147483647i));
    global0 = ~_wgslsmith_mult_vec3_i32(-(-vec3<i32>(u_input.a.x, 22911i, arg_1.c.b) & vec3<i32>(arg_2.c.b, -4467i, arg_2.b.b)), firstTrailingBit(reverseBits(vec3<i32>(u_input.a.x, arg_2.c.b, arg_2.b.b))));
    return abs(_wgslsmith_div_vec4_i32(~vec4<i32>(arg_2.c.b, arg_1.c.b, global0.x, global0.x) & abs(vec4<i32>(0i, -10057i, 0i, -1i)), min(_wgslsmith_add_vec4_i32(vec4<i32>(23770i, arg_1.b.b, -34338i, 48624i), vec4<i32>(0i, 0i, 0i, -1i)), firstTrailingBit(vec4<i32>(-36783i, arg_2.c.b, arg_1.c.b, u_input.a.x))) << ((vec4<u32>(78348u, u_input.c.x, 0u, u_input.c.x) & ~vec4<u32>(0u, u_input.c.x, 0u, u_input.c.x)) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_5 {
    global0 = -vec3<i32>(u_input.a.x, -65446i | u_input.a.x, abs(u_input.a.x & (global0.x | u_input.a.x)));
    global0 = vec3<i32>(-_wgslsmith_div_i32(global0.x, global0.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global0.x), vec3<i32>(global0.x, -21805i, 0i)), u_input.a.x, 47795i, -22054i), func_4(vec4<bool>(false, false, select(false, true, true), true), Struct_2(_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(1148f, arg_0.x, arg_0.x, arg_0.x)), Struct_1(vec2<bool>(false, false), global0.x, vec4<bool>(false, false, false, false), arg_0.wx), func_2(vec3<i32>(-1i, u_input.a.x, -1i)), arg_0.x), Struct_2(_wgslsmith_f_op_vec4_f32(arg_0 - arg_0), func_2(vec3<i32>(-1i, global0.x, -1i)), func_2(vec3<i32>(global0.x, global0.x, u_input.a.x)), arg_0.x), func_3(Struct_3(Struct_1(vec2<bool>(false, true), u_input.a.x, vec4<bool>(false, true, false, false), vec2<f32>(-1118f, arg_0.x)), u_input.c.x), arg_0.x))), -(1i >> (_wgslsmith_mod_u32(0u, 1u) % 32u)) & (0i | global0.x));
    let var_0 = ~(-func_4(func_2(vec3<i32>(-1i, global0.x, 2918i)).c, Struct_2(arg_0, Struct_1(vec2<bool>(true, true), 35988i, vec4<bool>(true, false, true, false), arg_0.wy), Struct_1(vec2<bool>(false, false), 4629i, vec4<bool>(true, false, false, true), arg_0.zx), arg_0.x), Struct_2(arg_0, Struct_1(vec2<bool>(false, true), 2147483647i, vec4<bool>(false, true, false, true), vec2<f32>(-300f, arg_0.x)), Struct_1(vec2<bool>(true, true), u_input.a.x, vec4<bool>(true, false, true, true), vec2<f32>(610f, -910f)), -330f), false).yyx >> (vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, u_input.c.x, u_input.b)), vec3<u32>(0u, 7132u, u_input.c.x) ^ vec3<u32>(54562u, 1u, 43914u)), _wgslsmith_dot_vec2_u32(u_input.c, ~vec2<u32>(u_input.c.x, u_input.b))) % vec3<u32>(32u)));
    let var_1 = Struct_1(vec2<bool>(true, !func_3(Struct_3(Struct_1(vec2<bool>(true, true), u_input.a.x, vec4<bool>(true, false, true, true), vec2<f32>(arg_0.x, -103f)), u_input.c.x), arg_0.x)), ~22437i, !select(vec4<bool>(true, true, true, true), func_2(vec3<i32>(-6178i, var_0.x, u_input.a.x)).c, func_2(vec3<i32>(-1i, -23527i, global0.x)).c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.wy + _wgslsmith_f_op_vec2_f32(arg_0.wy + arg_0.yy)))));
    let var_2 = min(min(~(~u_input.b), _wgslsmith_div_u32(4294967295u, ~(~u_input.c.x))), ~1u);
    return Struct_5(var_1.d.x, _wgslsmith_add_i32(~_wgslsmith_sub_i32(1i, var_1.b), -87944i ^ -global0.x) << (countOneBits(~(1u >> (u_input.b % 32u))) % 32u), ~(-reverseBits(-vec4<i32>(global0.x, global0.x, -2147483647i, -1i))), ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(3606u, u_input.b), vec2<u32>(36310u, var_2)), u_input.c)), Struct_4(var_0, Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(611f, var_1.d.x, 950f, var_1.d.x), _wgslsmith_f_op_vec4_f32(-arg_0))), var_1, func_2(firstTrailingBit(vec3<i32>(global0.x, var_0.x, -52972i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d.x)))), var_1.c));
}

fn func_5(arg_0: Struct_5) -> Struct_1 {
    global0 = abs(arg_0.c.xxz) >> (vec3<u32>(_wgslsmith_mod_u32(0u, ~4514u), ~u_input.b, countOneBits(0u)) % vec3<u32>(32u));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * arg_0.a) - _wgslsmith_f_op_f32(f32(-1f) * -541f)))));
    let var_1 = Struct_4(firstTrailingBit(reverseBits(_wgslsmith_add_vec3_i32(arg_0.e.a, arg_0.e.a))), arg_0.e.b, vec4<bool>(func_3(Struct_3(Struct_1(arg_0.e.c.xy, u_input.a.x, vec4<bool>(false, arg_0.e.b.b.c.x, arg_0.e.b.b.a.x, arg_0.e.c.x), arg_0.e.b.c.d), 19551u), _wgslsmith_f_op_f32(f32(-1f) * -302f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + -1311f) - arg_0.e.b.d) > 1000f, true || !any(vec4<bool>(false, true, arg_0.e.c.x, arg_0.e.b.b.a.x)), !all(!arg_0.e.b.b.c)));
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(var_1.b.a, _wgslsmith_div_vec4_f32(var_1.b.a, arg_0.e.b.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.b.a), _wgslsmith_f_op_vec4_f32(-arg_0.e.b.a), var_1.b.c.c)))))).e;
    var var_3 = vec2<u32>(~_wgslsmith_sub_u32(~_wgslsmith_add_u32(4294967295u, u_input.c.x), ~1u), 4294967295u);
    return Struct_1(select(var_1.c.yz, vec2<bool>(arg_0.e.c.x, arg_0.e.b.c.c.x | true), vec2<bool>(arg_0.e.b.b.c.x, false)), ~global0.x, func_2(arg_0.e.a).c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.c.d + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-656f, 964f) - vec2<f32>(272f, -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~vec3<i32>(u_input.a.x, ~(-2147483647i) | abs(global0.x), _wgslsmith_add_i32(2147483647i ^ u_input.a.x, _wgslsmith_add_i32(2147483647i, -19234i))), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1622f, -385f, 888f) * vec4<f32>(1208f, 1061f, -994f, -730f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-229f, -1000f, 448f, 753f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-271f, 563f, 690f, 522f)))), func_5(func_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(898f, 131f, -1747f, -394f))))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1134f, -1829f, 326f, 306f))).e.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -125f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-346f, -719f, false))))), func_5(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(182f, 1448f, 436f, 247f), vec4<f32>(-2259f, -194f, -842f, -370f), vec4<bool>(true, false, true, false)))))).c);
    var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.b.a * vec4<f32>(var_0.b.c.d.x, var_0.b.b.d.x, var_0.b.c.d.x, 865f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(433f, var_0.b.c.d.x, 1000f, var_0.b.a.x) * var_0.b.a) - _wgslsmith_f_op_vec4_f32(select(var_0.b.a, var_0.b.a, vec4<bool>(var_0.c.x, true, true, var_0.c.x))))))).e;
    let var_1 = Struct_1(vec2<bool>(var_0.b.c.a.x, false), var_0.b.c.b, var_0.b.b.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(var_0.b.a.xw)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1993f, var_0.b.d) + vec2<f32>(var_0.b.d, var_0.b.c.d.x))))))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(var_0.a).d.x))), var_0.a.x, firstLeadingBit(select(~vec4<i32>(1i, var_0.b.b.b, var_0.a.x, -2147483647i), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -1i, -1i, 5760i), vec4<i32>(31541i, u_input.a.x, var_0.b.c.b, -763i))), func_1(_wgslsmith_f_op_vec4_f32(-var_0.b.a)).e.b.b.c)), u_input.c, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.b.a, vec4<f32>(var_0.b.c.d.x, 352f, 970f, var_1.d.x))) - var_0.b.a))).e);
    var_0 = var_2.e;
    var var_3 = var_2.e.c.xxw;
    var_3 = func_2(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, global0.x, var_2.e.a.x | u_input.a.x), var_2.c.yyz)).c.wzx;
    var var_4 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e.b.a, _wgslsmith_sub_vec3_u32(vec3<u32>(53177u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.b, 115459u), abs(vec3<u32>(31789u, u_input.b, 8895u))), ~var_2.d.x ^ _wgslsmith_div_u32(0u, var_2.d.x)), (firstLeadingBit(vec3<u32>(0u, 60182u, 4294967295u)) ^ vec3<u32>(var_2.d.x, var_2.d.x, 12629u)) >> ((vec3<u32>(4294967295u, u_input.b, 4294967295u) >> (~vec3<u32>(var_2.d.x, u_input.c.x, var_2.d.x) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(var_2.d.x, u_input.b), 1u), ~(~var_2.d), vec2<u32>(_wgslsmith_add_u32(var_2.d.x, ~u_input.b), _wgslsmith_sub_u32(0u << (u_input.b % 32u), 1u))));
}

