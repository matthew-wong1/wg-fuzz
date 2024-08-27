struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(1688u, 0u, 0u, 16304u), vec4<u32>(4294967295u, 24205u, 4294967295u, 1393u), vec4<u32>(4294967295u, 43978u, 2387u, 45599u), vec4<u32>(27996u, 7492u, 24799u, 0u), vec4<u32>(21327u, 0u, 1u, 4294967295u), vec4<u32>(8952u, 14561u, 17360u, 0u), vec4<u32>(1u, 0u, 0u, 13744u), vec4<u32>(9981u, 29949u, 4294967295u, 0u), vec4<u32>(1u, 37605u, 0u, 16462u), vec4<u32>(16420u, 4294967295u, 724u, 0u), vec4<u32>(38085u, 30461u, 47009u, 4294967295u), vec4<u32>(1u, 25393u, 71194u, 51280u), vec4<u32>(0u, 43081u, 1u, 4294967295u), vec4<u32>(69207u, 4294967295u, 24450u, 0u), vec4<u32>(1u, 6190u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 15166u, 7419u), vec4<u32>(16355u, 5459u, 0u, 108206u), vec4<u32>(4294967295u, 1u, 0u, 58907u), vec4<u32>(3735u, 70589u, 4294967295u, 0u), vec4<u32>(435u, 0u, 1194u, 64455u), vec4<u32>(4294967295u, 0u, 0u, 1u));

var<private> global1: array<Struct_1, 2>;

var<private> global2: Struct_3;

var<private> global3: vec3<i32>;

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> vec2<i32> {
    let var_0 = 459i;
    let var_1 = arg_0;
    global3 = reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(i32(-1i) * -1i, -6897i), -17167i), vec3<i32>(~var_0 >> ((4294967295u | global2.a.c.x) % 32u), -2147483647i, var_0)));
    global0 = array<vec4<u32>, 21>();
    let var_2 = -807f;
    return abs(global3.yy);
}

fn func_3() -> u32 {
    let var_0 = Struct_3(global2.a, firstLeadingBit(max((vec2<i32>(-2147483647i, global4.x) ^ vec2<i32>(u_input.b, global3.x)) >> ((vec2<u32>(0u, global2.a.c.x) | vec2<u32>(global2.a.c.x, 0u)) % vec2<u32>(32u)), global3.xx)));
    global2 = var_0;
    global0 = array<vec4<u32>, 21>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-290f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global4 = _wgslsmith_mod_vec2_i32(~(-_wgslsmith_clamp_vec2_i32(global3.yy, vec2<i32>(2147483647i, global4.x) ^ global3.zx, -global2.b)), vec2<i32>(_wgslsmith_sub_i32(global3.x, 24329i | global3.x), -1i));
    return ~min(var_0.a.c.x, abs(var_0.a.c.x));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: Struct_3) -> vec3<i32> {
    global4 = func_2(select(arg_2, true, !(!(!global2.a.b.x))), !select(global2.a.b.xz, arg_3.a.b.yx, false));
    global2 = arg_3;
    global0 = array<vec4<u32>, 21>();
    let var_0 = global1[_wgslsmith_index_u32(~func_3(), 2u)];
    var var_1 = arg_3;
    return _wgslsmith_mult_vec3_i32(abs(select(vec3<i32>(global2.a.a, 1i, ~15742i), firstLeadingBit(vec3<i32>(var_1.b.x, 28194i, -1i)) >> (vec3<u32>(arg_1, arg_1, u_input.a) % vec3<u32>(32u)), all(!arg_3.a.b))), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(global2.b.x, global4.x, 30909i)), vec3<i32>(u_input.b, -50965i, -69579i) & vec3<i32>(-2147483647i, 0i, -1i)), vec3<i32>(-1i) * -vec3<i32>(global4.x, -1i, 21956i)) | abs(~vec3<i32>(arg_3.a.a, 2147483647i, global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = min(~abs(~vec3<i32>(global4.x, u_input.b, -3311i)), _wgslsmith_mod_vec3_i32(vec3<i32>(~(~u_input.b), 41781i, -u_input.b), ~func_1(u_input.a, global2.a.c.x, false, Struct_3(global2.a, vec2<i32>(global2.b.x, global4.x))) << (abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(2482u, u_input.a, global2.a.c.x), vec3<u32>(1u, global2.a.c.x, global2.a.c.x))) % vec3<u32>(32u))));
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1091f - _wgslsmith_f_op_f32(f32(-1f) * -2527f)))), -1398f, -598f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(1976f)), _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1646f, var_0.x) * var_0.xy)), vec2<bool>(global2.a.b.x, !global2.a.b.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -403f)))), var_0.xx, global2.a.c.x <= abs(global2.a.c.x))), !(!select(vec2<bool>(true, global2.a.b.x), vec2<bool>(false, true), global2.a.b.x)))));
}

