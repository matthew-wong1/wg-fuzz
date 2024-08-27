struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec2<u32>(0u, 10616u), 553f, vec4<bool>(true, true, false, true)), 1i, vec3<i32>(0i, -76758i, -28849i)), Struct_2(Struct_1(vec2<u32>(1u, 15474u), -1000f, vec4<bool>(false, false, true, false)), -59864i, vec3<i32>(-10632i, 33238i, 1i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 48225u), -887f, vec4<bool>(true, false, true, true)), 13660i, vec3<i32>(40496i, -12596i, -1i)), Struct_2(Struct_1(vec2<u32>(60193u, 0u), -1135f, vec4<bool>(true, true, true, false)), -14080i, vec3<i32>(-18154i, 44882i, -1i)), Struct_2(Struct_1(vec2<u32>(35080u, 0u), -713f, vec4<bool>(false, true, true, true)), 0i, vec3<i32>(i32(-2147483648), -17996i, 1i)), Struct_2(Struct_1(vec2<u32>(68446u, 36795u), 624f, vec4<bool>(true, true, false, false)), -14553i, vec3<i32>(-29842i, 47636i, -28472i)), Struct_2(Struct_1(vec2<u32>(25990u, 0u), 957f, vec4<bool>(true, true, false, false)), 53984i, vec3<i32>(16870i, 0i, -1i)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), 641f, vec4<bool>(true, false, true, false)), -75221i, vec3<i32>(3232i, -9553i, -6544i)), Struct_2(Struct_1(vec2<u32>(89582u, 4294967295u), -314f, vec4<bool>(true, true, false, false)), 29150i, vec3<i32>(0i, -3701i, 2147483647i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 45698u), -876f, vec4<bool>(true, true, false, false)), i32(-2147483648), vec3<i32>(2147483647i, i32(-2147483648), -32014i)), Struct_2(Struct_1(vec2<u32>(575u, 4294967295u), -2671f, vec4<bool>(true, false, false, true)), -1i, vec3<i32>(-22156i, 1i, 0i)), Struct_2(Struct_1(vec2<u32>(1u, 1u), 1428f, vec4<bool>(true, true, false, false)), -2651i, vec3<i32>(-1i, -1i, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(81899u, 0u), 565f, vec4<bool>(true, true, false, false)), 1843i, vec3<i32>(-14924i, 0i, -14041i)), Struct_2(Struct_1(vec2<u32>(9123u, 0u), -1000f, vec4<bool>(false, false, true, true)), 18589i, vec3<i32>(-39399i, -1i, 18504i)), Struct_2(Struct_1(vec2<u32>(65331u, 51089u), -1328f, vec4<bool>(false, false, false, false)), i32(-2147483648), vec3<i32>(i32(-2147483648), -1627i, 0i)), Struct_2(Struct_1(vec2<u32>(6999u, 59193u), 198f, vec4<bool>(false, true, true, false)), 41261i, vec3<i32>(2147483647i, 8995i, 0i)), Struct_2(Struct_1(vec2<u32>(31010u, 0u), -2142f, vec4<bool>(true, true, false, true)), -38780i, vec3<i32>(34129i, 43488i, 2147483647i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), 766f, vec4<bool>(true, true, true, false)), 2147483647i, vec3<i32>(1i, 8426i, 1i)), Struct_2(Struct_1(vec2<u32>(72374u, 1u), -1298f, vec4<bool>(false, true, true, true)), -38154i, vec3<i32>(-975i, i32(-2147483648), -17430i)), Struct_2(Struct_1(vec2<u32>(0u, 28570u), -213f, vec4<bool>(true, false, false, true)), -1i, vec3<i32>(25192i, -36015i, -1i)), Struct_2(Struct_1(vec2<u32>(12670u, 90258u), 1362f, vec4<bool>(true, false, false, true)), 2147483647i, vec3<i32>(31914i, 2147483647i, -3330i)), Struct_2(Struct_1(vec2<u32>(1u, 0u), 441f, vec4<bool>(true, true, false, false)), 0i, vec3<i32>(1i, 0i, 1i)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 562f, vec4<bool>(true, false, true, true)), 1i, vec3<i32>(-1i, 11516i, 2147483647i)), Struct_2(Struct_1(vec2<u32>(30004u, 4294967295u), 790f, vec4<bool>(false, false, true, true)), 20861i, vec3<i32>(-24995i, 0i, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(1u, 1u), -1231f, vec4<bool>(false, true, false, false)), -13814i, vec3<i32>(2147483647i, -4337i, -33191i)), Struct_2(Struct_1(vec2<u32>(4294967295u, 45912u), -197f, vec4<bool>(false, true, true, false)), 34061i, vec3<i32>(3134i, 1i, i32(-2147483648))), Struct_2(Struct_1(vec2<u32>(1u, 3642u), -628f, vec4<bool>(true, true, true, true)), -29818i, vec3<i32>(-4153i, -28569i, -11513i)), Struct_2(Struct_1(vec2<u32>(42005u, 1u), -286f, vec4<bool>(false, false, true, true)), 36512i, vec3<i32>(4968i, 1i, 1i)), Struct_2(Struct_1(vec2<u32>(1u, 36580u), -495f, vec4<bool>(false, true, true, false)), 0i, vec3<i32>(0i, 1328i, 1i)), Struct_2(Struct_1(vec2<u32>(0u, 69971u), -1412f, vec4<bool>(false, false, false, false)), 1i, vec3<i32>(i32(-2147483648), 11097i, -19839i)));

var<private> global1: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(41052u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 12953u), vec2<u32>(9948u, 1u), vec2<u32>(6223u, 2847u), vec2<u32>(21063u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(44433u, 1u), vec2<u32>(76977u, 1u), vec2<u32>(4294967295u, 22365u), vec2<u32>(27245u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(any(vec2<bool>(true, true)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true)) | true), -u_input.a.x != -(-2147483647i ^ _wgslsmith_sub_i32(1i, u_input.b.x)));
    var var_1 = true;
    var var_2 = vec2<bool>(true, false);
    var var_3 = vec2<bool>(var_2.x, !(!var_0.x));
    let var_4 = Struct_1(select(abs(vec2<u32>(~u_input.c.x, ~1u)), u_input.c.xx, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1314f)))), vec4<bool>(true && var_0.x, any(vec4<bool>(false | var_0.x, any(vec3<bool>(true, var_3.x, var_0.x)), var_3.x | var_3.x, 4294967295u == u_input.c.x)), ((u_input.d.x & -2147483647i) <= (-2147483647i << (u_input.c.x % 32u))) & var_2.x, var_2.x));
    return 31149u >> (u_input.c.x % 32u);
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(abs(-452f)), arg_0.x ^ max(_wgslsmith_sub_i32(i32(-1i) * -1i, -arg_0.x), arg_0.x), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(19760i, u_input.a.x, u_input.d.x), vec3<i32>(u_input.d.x, arg_0.x, u_input.d.x)), min(u_input.d.wyw, vec3<i32>(2147483647i, arg_0.x, u_input.a.x))), u_input.d.x), ~(~(u_input.d.x | u_input.d.x)) & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -37211i, _wgslsmith_mod_i32(arg_0.x, arg_0.x), 0i), -vec4<i32>(2147483647i, u_input.b.x, 54623i, u_input.b.x)), Struct_1(vec2<u32>(u_input.c.x, 1u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-299f)) - _wgslsmith_f_op_f32(1290f - -1256f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1407f)))), vec4<bool>(true, false, false, true)));
    let var_1 = Struct_1(~u_input.c.yx, _wgslsmith_f_op_f32(floor(-443f)), vec4<bool>(any(var_0.e.c), all(!(!var_0.e.c.yxw)), var_0.e.c.x, 1277f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-433f - var_0.e.b))));
    let var_2 = Struct_1(global1[_wgslsmith_index_u32(0u & func_3(), 12u)], var_0.a, var_1.c);
    var var_3 = arg_0.x;
    let var_4 = var_0.e;
    return func_3();
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    global1 = array<vec2<u32>, 12>();
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(arg_0.a.a.x, 12u)], _wgslsmith_f_op_f32(max(arg_2.b, arg_1.e.b)), arg_1.e.c);
    global1 = array<vec2<u32>, 12>();
    var var_1 = vec2<u32>(51731u, ~arg_1.e.a.x);
    let var_2 = func_2(arg_0.c.yy);
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-956f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1781f * 172f) * 1f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1681f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(1u, 30u)], Struct_3(459f, 33328i, u_input.a.x, u_input.b.x, Struct_1(vec2<u32>(24456u, 4294967295u), 920f, vec4<bool>(false, false, true, false))), Struct_1(vec2<u32>(45453u, 4294967295u), -341f, vec4<bool>(true, false, true, false)), vec3<bool>(true, true, true))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1146f, 270f)), _wgslsmith_f_op_f32(f32(-1f) * -850f))) + _wgslsmith_f_op_f32(f32(-1f) * -635f))));
    global1 = array<vec2<u32>, 12>();
    global0 = array<Struct_2, 30>();
    var var_1 = !select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), !any(vec2<bool>(false, false))));
    let var_2 = 4294967295u;
    var var_3 = select(firstTrailingBit(min(u_input.c.zy, u_input.c.xz << (vec2<u32>(0u, 40041u) % vec2<u32>(32u)))), vec2<u32>(u_input.c.x, 1u), true) ^ ~abs(_wgslsmith_mult_vec2_u32(u_input.c.yx, vec2<u32>(u_input.c.x, 0u)));
    let var_4 = vec2<u32>(var_2, _wgslsmith_add_u32(~(u_input.c.x << (_wgslsmith_div_u32(var_2, u_input.c.x) % 32u)), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_mod_vec3_i32(~(-u_input.d.zzx), u_input.d.yzy), _wgslsmith_f_op_f32(ceil(-1074f)), ~vec4<u32>(~var_4.x, 89557u, ~var_3.x, 73275u), select(~(~(~52310u)), var_3.x, false));
}

